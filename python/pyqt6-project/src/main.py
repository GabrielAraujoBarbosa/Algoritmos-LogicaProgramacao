from PyQt6.QtWidgets import QApplication, QMainWindow, QWidget, QVBoxLayout, QHBoxLayout, QLabel, QLineEdit, QPushButton
from PyQt6.QtGui import QPixmap, QFontDatabase
from pathlib import Path
import sys

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Wete")
        self.setGeometry(100, 100, 700, 300)
        self.setFixedWidth(900)

        main_layout = QHBoxLayout()

        left_layout = QVBoxLayout()
        right_layout = QVBoxLayout()
        # (START) WIDGETS IN LEFT LAYOUT
        label_company_name = QLabel("Wete")
        label_company_name.setStyleSheet("QLabel{font-weight:bold;font-size:20pt; color:#0046ff}")

        label_company_description = QLabel("Melhor ferramenta de Workflow e Colaboração em Equipe 100% gratuita.")
        label_company_description.setStyleSheet("QLabel{font-size:9pt; color: #575859;}")

        pix_map = QPixmap( str(Path(__file__).parent / "people-puzzle.webp") )
        image_decoration = QLabel()
        image_decoration.setPixmap(pix_map)

        left_layout.addWidget(label_company_name)
        left_layout.addWidget(label_company_description)
        left_layout.addWidget(image_decoration)
        # (END)

        # (START) WIDGETS IN RIGHT LAYOUT
        label_form_title = QLabel("CADASTRE-SE")
        label_form_title.setStyleSheet("QLabel{font-weight:bold;font-size:12px; color:#9c9ea0;}")

        label_form_description = QLabel("Crie uma conta\ngratuitamente")
        label_form_description.setStyleSheet("QLabel{font-weight:bold;font-size:20pt; color:#000000;background-color:#ffffff;}")

        label_input1_title = QLabel("Nome Completo")
        edit_input1_field = QLineEdit()

        label_input2_title = QLabel("Endereço de E-mail")
        edit_input2_field = QLineEdit()

        label_input3_title = QLabel("Senha")
        edit_input3_field = QLineEdit()

        label_input4_title = QLabel("Confirmar Senha")
        edit_input4_field = QLineEdit()

        button1_send = QPushButton("ENVIAR")
        button1_send.setStyleSheet("QPushButton{background-color:#0046ff; color:white;font-weight:bold;font-size:10pt;}")
        #self.button.clicked.connect(self.on_button_click)

        label_options_button = QLabel("ou")

        button2_register = QPushButton("Cadastrar-se com o Google")
        button2_register.setStyleSheet("QPushButton{border: 1px solid #efefef; color:black;font-weight:bold;font-size:10pt;}")

        right_layout.addWidget(label_form_title)
        right_layout.addWidget(label_form_description)
        right_layout.addWidget(label_input1_title)
        right_layout.addWidget(edit_input1_field)
        right_layout.addWidget(label_input2_title)
        right_layout.addWidget(edit_input2_field)
        right_layout.addWidget(label_input3_title)
        right_layout.addWidget(edit_input3_field)
        right_layout.addWidget(label_input4_title)
        right_layout.addWidget(edit_input4_field)
        right_layout.addWidget(button1_send)
        right_layout.addWidget(label_options_button)
        right_layout.addWidget(button2_register)
        # (END)

        # (START) SETTING UP LAYOUTS ON INTERMEDIATE SCREENS
        left_screen = QWidget()
        left_screen.setLayout(left_layout)
        left_screen.setStyleSheet("QWidget{background-color:#f1f6fc;}")
        left_screen.setFixedWidth(550)

        right_screen = QWidget()
        right_screen.setLayout(right_layout)
        right_screen.setStyleSheet("QWidget{background-color:#ffffff; margin: 0px 10px;}")
        # (END)

        # (START) WIDGETS IN MAIN LAYOUT
        main_layout.addWidget(left_screen)
        main_layout.addWidget(right_screen)
        # (END)

        # (START) SETTING UP LAYOUT ON MAIN SCREEN
        main_screen = QWidget()
        main_screen.setStyleSheet("QWidget{background-color:#ffffff;}")
        main_screen.setLayout(main_layout)
        # (END)

        # SETTING EVERYTHING UP IN THE WINDOW
        self.setCentralWidget(main_screen)

    def on_button_click(self):
        text = self.input_field.text()
        self.label.setText(f"You entered: {text}")


app = QApplication(sys.argv)

# (START) SETTING UP CUSTOM FONT IN THE APPLICATION
font_id = QFontDatabase.addApplicationFont( str(Path(__file__).parent / "Inter.ttf") )
font_family = QFontDatabase.applicationFontFamilies(font_id)[0]
app.setStyleSheet(f"""
    * {{font-family: '{font_family}';}} 
    QLabel{{color: #26292f;}}
    QLineEdit{{border: 1px solid #efefef; width: 200px; border-radius: 5px; padding: 5px;}}
    QPushButton{{width: 200px; border-radius:5px;padding:10px 10px;}}
""")
# (END)

window = MainWindow()
window.show()
app.exec()