if (playerScore >= 3)
{
	show_message("Congratulations!")
	player1Score = 0;
	player2Score = 0;
	enemyScore = 0;
	game_data_obj.pongCompleted = true;
	room_goto(hub_rm);
}
if (enemyScore >= 3)
{
	show_message("Enemy AI Won!")
	player1Score = 0;
	player2Score = 0;
	enemyScore = 0;
	room_goto(hub_rm);
} 