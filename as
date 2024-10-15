import py5

paddle1_y = 0
paddle2_y = 0
paddle_width = 0
paddle_height = 0
paddle_speed = 0
ball_size = 0
ball_x = 0
ball_y = 0
ball_vellx = 0
ball_velly = 0
player1_score =0
player2_score = 0
teclas = set()


def setup():
    
 py5.size(800, 400)
 global paddle_width, paddle_height, paddle_speed, ball_size
 global ball_x, ball_y, ball_dx, ball_dy
 global paddle1_y, paddle2_y, player1_score, player2_score
 paddle_width = 20
 paddle_height = 100
 paddle_speed = 7
 ball_size = 20
 reset_game()
 
def reset_game():
 global ball_x, ball_y, ball_dx, ball_dy, paddle1_y, paddle2_y
 global player1_score, player2_score
 ball_x = py5.width / 2
 ball_y = py5.height / 2
 ball_dx = 5
 ball_dy = 3
 paddle1_y = py5.height / 2 - paddle_height / 2
 paddle2_y = py5.height / 2 - paddle_height / 2
 player1_score = 0
 player2_score = 0

def draw():
 global ball_x, ball_y, ball_dx, ball_dy, paddle1_y, paddle2_y
 global player1_score, player2_score
 py5.background(0)
 #paletas
 py5.rect(30, paddle1_y, paddle_width, paddle_height) 
 py5.rect(py5.width - 30 - paddle_width, paddle2_y, paddle_width,paddle_height)
 #pelota
 py5.ellipse(ball_x, ball_y, ball_size, ball_size)
 #marcador
 py5.text_size(32)
 py5.text_align(py5.CENTER)
 py5.fill(255)
 py5.text(f"{player1_score} - {player2_score}", py5.width / 2, 40)
 
 ball_x += ball_dx
 ball_y += ball_dy

