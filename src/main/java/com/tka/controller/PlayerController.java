package com.tka.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tka.entity.Player;
import com.tka.service.PlayerService;

@Controller
@RequestMapping("/players")
public class PlayerController {

    @Autowired
    private PlayerService playerService;
    
//    @GetMapping("/add")
//    public String showAddPlayerForm(Model model) {
//        model.addAttribute("player", new Player()); // Add an empty Player object for binding
//        return "add player"; // JSP file name that contains the form
//    }


    @PostMapping("/add")
    public String createPlayer(Player player) {
        playerService.createPlayer(player); // Save the player using the service layer
        return "players"; // Redirect to the list of players
    }


    @GetMapping("/{id}")
    public Player getPlayerById(@PathVariable Long id) {
        return playerService.getPlayerById(id);
    }

    @GetMapping("/getallplayers")
    public String getAllPlayers( Model model) {
    	List<Player> allPlayers = playerService.getAllPlayers();
    	model.addAttribute("allPlayers", allPlayers);
        return "players";
    }
    
    @PutMapping("/updateplayer")
    public String updateplayer(@RequestBody Player player)
    {
    	return playerService.updateplayer(player);
    }
    
    @RequestMapping("/deleteplayer/{id}")
     public String deleteplayer(@PathVariable("id") Long id)
     {
    	 playerService.deleteplayer(id);
    	 return "players";
     }
    
}
