﻿using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class SearchMatchPage : MonoBehaviour
{
    [Header("Match Info")]
    [SerializeField] private TextMeshProUGUI matchId;
    [SerializeField] private TextMeshProUGUI matchYear;
    [SerializeField] private TextMeshProUGUI matchPhase;
    [SerializeField] private TextMeshProUGUI matchHour;
    [SerializeField] private TextMeshProUGUI matchDuration;
    [SerializeField] private TextMeshProUGUI matchScore;

    [Header("Blue Team Players")]
    [SerializeField] private TextMeshProUGUI blueTeamName;
    [SerializeField] private PlayerMatchInfo topBlue;
    [SerializeField] private PlayerMatchInfo jgBlue;
    [SerializeField] private PlayerMatchInfo midBlue;
    [SerializeField] private PlayerMatchInfo adcBlue;
    [SerializeField] private PlayerMatchInfo supBlue;

    [Header("Red Team Players")]
    [SerializeField] private TextMeshProUGUI redTeamName;
    [SerializeField] private PlayerMatchInfo topRed;
    [SerializeField] private PlayerMatchInfo jgRed;
    [SerializeField] private PlayerMatchInfo midRed;
    [SerializeField] private PlayerMatchInfo adcRed;
    [SerializeField] private PlayerMatchInfo supRed;

    [Header("References")]
    [SerializeField] private ApiManager apiManager;
    [SerializeField] private SearchManager searchManager;
    
    [SerializeField] private List<PlayerMatchInfo> playerMatchInfos = new List<PlayerMatchInfo>();

    // atualiza todas as referencia de acordo com o id da partida selecionada no feed

    void Start()
    {
        apiManager = FindObjectOfType<ApiManager>();

        // Procura todos os objetos do tipo PlayerMatchInfo na cena
        playerMatchInfos.AddRange(FindObjectsOfType<PlayerMatchInfo>());

    }

    void OnEnable()
    {
        UpdateMatchInfo(searchManager.EntityId);
    }

    // atualiza as informacoes da partida conforme a partida selecionada
    public void UpdateMatchInfo(int idMatch)
    {
        // Encontre a partida com o id correspondente
        var partida = apiManager.listaPartidas.Find(p => p.idPartida == idMatch);
        if (partida != null)
        {
            // Exibe as informa��es da partida
            redTeamName.text = partida.equipeVermelha;
            blueTeamName.text = partida.equipeAzul;

            matchId.text = "#" + partida.idPartida.ToString();
            matchYear.text = partida.data;
            matchPhase.text = partida.etapa;
            matchHour.text = partida.hora;
            matchDuration.text = partida.duracao; // Corrigido para a vari�vel correta
            matchScore.text = partida.placar.ToString();

            // Atualiza os jogadores das equipes
            foreach (var player in apiManager.ListaJogadoresAzul)
            {
                UpdateBlueTeam(player);
            }

            foreach (var player in apiManager.ListaJogadoresVermelhos)
            {
                UpdateRedTeam(player);
            }
        }
        else
        {
            Debug.LogWarning("Partida n�o encontrada para o ID: " + idMatch);
        }
    }

    // atualiza o dado de cada player de acordo com a posicao da equipe azul e vermelha PRECISA TIRAR ESSES RANDOM BELEZA?
    private void UpdateBlueTeam(JogadorPartida player)
    {
        switch (player.posicao)
        {
            case "Top":
                topBlue.UpdateMatchData(player);
                break;
            case "Jungle":
                jgBlue.UpdateMatchData(player);
                break;
            case "Mid":
                midBlue.UpdateMatchData(player);
                break;
            case "ADC":
                adcBlue.UpdateMatchData(player);
                break;
            case "Support":
                supBlue.UpdateMatchData(player);
                break;
        }
    }
    private void UpdateRedTeam(JogadorPartida player)
    {
        switch (player.posicao)
        {
            case "Top":
                topRed.UpdateMatchData(player);
                break;
            case "Jungle":
                jgRed.UpdateMatchData(player);
                break;
            case "Mid":
                midRed.UpdateMatchData(player);
                break;
            case "ADC":
                adcRed.UpdateMatchData(player);
                break;
            case "Support":
                supRed.UpdateMatchData(player);
                break;
        }
    }
}
