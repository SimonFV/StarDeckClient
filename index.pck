GDPC                                                                            '   @   res://.import/default.png-6e604cb9653cbc87e211de440d2f2b02.stex �      �      ʲ�3"<ݺ�f�?��<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex L     �      &�y���ڞu;>��.pH   res://.import/usuario_defecto.png-54cfbf5499d8410b619c0cde93aaeccc.stex �@     f      �¨���j=4�_�<   res://addons/HTML5FileExchange/HTML5FileExchange.gd.remap   0�     E       AɰйF�P�`���(��4   res://addons/HTML5FileExchange/HTML5FileExchange.gdc             :[n�X���X WO8�T�0   res://addons/HTML5FileExchange/plugin.gd.remap  ��     :       �7�ޱ���j�
bg�,   res://addons/HTML5FileExchange/plugin.gdc   @      y      �@���G�A�P�@��An   res://carta/carta.gd.remap  ��     &       ɕ�s2�a�Δ}E*ŵ   res://carta/carta.gdc   �      Q       ���7{���]J�   res://carta/carta.tscn         �      A�i���
x�F�{�V~4   res://configuracion/crear_carta/crear_carta.gd.remap��     @       �T��4�`��|u�0   res://configuracion/crear_carta/crear_carta.gdc �!      �      B���;c�[t��ܱa0   res://configuracion/crear_carta/crear_carta.tscn�8      /      �>$>����^?)�x@   res://configuracion/ver_cartas_admin/ver_cartas_admin.gd.remap  0�     J       ��Ư��Ob��-1�;<   res://configuracion/ver_cartas_admin/ver_cartas_admin.gdc   �g      �      ���rG+��f� <   res://configuracion/ver_cartas_admin/ver_cartas_admin.tscn  �s      �      xt'���z�'W��,N�<   res://configuracion/ver_cartas_admin/vista_carta_lista.tscn �{      �	      :�ݹy"�\��n���   res://default_env.tres  `�      �       um�`�N��<*ỳ�8    res://general/default.png.import�      �      �۪�6@���<ǎ$   res://general/fuentes/ARLRDBD.TTF   Ў      ̰      -h����=�[�$",   res://general/fuentes/menu_carta_font.tres  �?     �       ғ���RKuȦ�pq$,   res://general/global/usuario_actual.gd.remap��     8       t�q[<C�6����!� (   res://general/global/usuario_actual.gdc `@     |       �7��ٍ�{\IOH�(   res://general/usuario_defecto.png.importPI     �      �:�Ѿ��\=�aH��,   res://icon.png   �     �      G1?��z�c��vN��   res://icon.png.import    R     �      ��fe��6�B��^ U�,   res://menu_principal/menu_principal.gd.remap��     8       0'�dra�a�������(   res://menu_principal/menu_principal.gdc �T     �      &*:P�aA��<��W(   res://menu_principal/menu_principal.tscnPV     S
      �ݯ,��z|��ʬD   res://perfiles/crear_cuenta_usuario/crear_cuenta_usuario.gd.remap    �     M       Fŏ�NK������<   res://perfiles/crear_cuenta_usuario/crear_cuenta_usuario.gdc�`     �      h��5��R�ɨ;�4j�_@   res://perfiles/crear_cuenta_usuario/crear_cuenta_usuario.tscn   Pu     �-      $J(GkJ�J�Hi�H   res://perfiles/crear_cuenta_usuario/seleccion_cartas_inicial.gd.remap   P�     Q       ,��W#&M�ϴe� ~�^@   res://perfiles/crear_cuenta_usuario/seleccion_cartas_inicial.gdc�     �      zH�|r��焫���#�D   res://perfiles/crear_cuenta_usuario/seleccion_cartas_inicial.tscn    �     �      [�;�0W��.�(���8   res://perfiles/iniciar_sesion/iniciar_sesion.gd.remap   ��     A       �2
Y�w뽶�)P�-}0   res://perfiles/iniciar_sesion/iniciar_sesion.gdc��     �      1"�@��@<Ri���-�`4   res://perfiles/iniciar_sesion/iniciar_sesion.tscn   @�     �      ޽�mB�3&���0"q�   res://project.binary��           6\�!󻼩���.��    GDSC         <        ���Ӷ���   �����������������׶�   ���������������׶���   �����ض�   ���������׶�   ���������¶�   ��������������ݶ   ����������̶   �����϶�   �嶶   �������Ӷ���   ����������Ӷ   ���������Ŷ�   ������������Ӷ��   ���ڶ���   ���������������Ķ���   ����Ŷ��   ����������ڶ   ������������ض��   �����Ҷ�   ����������ض   �������Ӷ���   �����������ض���   ����Ӷ��   ����   �����������ض���   �������������������Ķ���   �������������������Ķ���   ��������������������Ķ��   ������������ٶ��      Cargar_manejador      HTML5      
   JavaScript        _HTML5FileExchange     q  
	var _HTML5FileExchange = {};
	_HTML5FileExchange.upload = function(gd_callback) {
		canceled = true;
		var input = document.createElement('INPUT'); 
		input.setAttribute("type", "file");
		input.setAttribute("accept", "image/png, image/jpeg, image/webp");
		input.click();
		input.addEventListener('change', event => {
			if (event.target.files.length > 0){
				canceled = false;}
			var file = event.target.files[0];
			var reader = new FileReader();
			this.fileType = file.type;
			// var fileName = file.name;
			reader.readAsArrayBuffer(file);
			reader.onloadend = (evt) => { // Since here's it's arrow function, "this" still refers to _HTML5FileExchange
				if (evt.target.readyState == FileReader.DONE) {
					this.result = evt.target.result;
					gd_callback(); // It's hard to retrieve value from callback argument, so it's just for notification
				}
			}
		  });
	}
	               lectura_completada        _HTML5FileExchange.result      	   image/png      
   image/jpeg     
   image/webp        Unsupported file format - %s.      4   An error occurred while trying to display the image.      carga_completada                                                    	      
               #      $      %      +      <      @      J      K      L      M      U      Z   /   ^   0   _   1   `   2   g   3   l   4   m   5   n   6   o   7   u   8   �   9   �   :   �   ;   �   <   �   =   �   >   �   ?   �   @   �   A   �   B   �   C   �   D   �   E   �   F   �   G   �   H   �   I   �   J   �   K   �   L   �   M   �   N   �   O   �   P   �   Q   �   R     S   3YYYYYYYB�  YB�  P�  QYY;�  �  T�  PRQSY;�  SYYY0�  PQV�  &�	  T�
  PQ�  �	  T�  P�  QV�  �  PQ�  �  �  T�  P�  QSYYYY0�  PQX=V�  �  T�  P�  R�  QYYY0�  P�  QV�  �  P�  QYYYY0�  PQV�  &�	  T�
  PQ�  �	  T�  P�  QV�  .Y�  �  T�  P�  QSY�  APR�  Q�  �  ;�  �  T�  S�  ;�  �  T�  P�  R�  Q�  �  ;�  �  T�  PQ�  ;�  �  /�  V�  �  V�  �  �  T�  P�  Q�  �	  V�  �  �  T�  P�  Q�  �
  V�  �  �  T�  P�  Q�  ;�  V�  �?  P�  �  Q�  .�  �  &�  V�  �?  P�  Q�  �  �  P�  R�  QY`      GDSC            $      �����������ض���   ����������Ӷ   ���������������������ض�   ���������Ӷ�   ������������������������ض��   	   HTML5File      3   res://addons/HTML5FileExchange/HTML5FileExchange.gd                                                     	      
               "      6Y3YYYYY0�  PQV�  �  PR�  QYYY0�  PQV�  �  PQY`       GDSC                   �������������������Ķ���                   3YY`               [gd_scene load_steps=4 format=2]

[ext_resource path="res://general/fuentes/menu_carta_font.tres" type="DynamicFont" id=1]
[ext_resource path="res://general/default.png" type="Texture" id=2]
[ext_resource path="res://carta/carta.gd" type="Script" id=3]

[node name="carta" type="AspectRatioContainer"]
margin_right = 320.0
margin_bottom = 504.0
ratio = 0.5625
script = ExtResource( 3 )

[node name="fondo" type="ColorRect" parent="."]
margin_left = 18.25
margin_right = 301.75
margin_bottom = 504.0
color = Color( 0.788235, 0.788235, 0.788235, 1 )

[node name="carta_caja" type="VBoxContainer" parent="."]
margin_left = 18.25
margin_right = 301.75
margin_bottom = 504.0
custom_constants/separation = 30

[node name="imagen" type="TextureRect" parent="carta_caja"]
margin_right = 283.0
margin_bottom = 250.0
rect_min_size = Vector2( 0, 250 )
texture = ExtResource( 2 )
expand = true

[node name="nombre" type="Label" parent="carta_caja"]
margin_top = 280.0
margin_right = 283.0
margin_bottom = 306.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
text = "Nombre"
align = 1

[node name="descripcion" type="RichTextLabel" parent="carta_caja"]
margin_top = 336.0
margin_right = 283.0
margin_bottom = 351.0
custom_colors/default_color = Color( 0, 0, 0, 1 )
text = "Descripción"
fit_content_height = true

[node name="valores_caja" type="HBoxContainer" parent="carta_caja"]
margin_top = 381.0
margin_right = 283.0
margin_bottom = 407.0
custom_constants/separation = 50
alignment = 1

[node name="energia" type="Label" parent="carta_caja/valores_caja"]
margin_left = 103.0
margin_right = 116.0
margin_bottom = 26.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
text = "1"
align = 1

[node name="costo_batalla" type="Label" parent="carta_caja/valores_caja"]
margin_left = 166.0
margin_right = 179.0
margin_bottom = 26.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
text = "1"
align = 1
       GDSC   S   '   �   t     ������ڶ   ����������¶   ����������������Ķ��   �����ض�   �����������׶���   ����Ӷ��   ����������Ӏ����   ��������������׶   ����������¶   �����϶�   ����   ��������Ҷ��   ������¶   ������������������������׶��   ��������ٶ��   ���������������׶���   ����������Ŷ   �����ٶ�   �������Ӷ���   �������¶���   ����������������¶��   �����������Ӷ���   ������Ӷ   ���¶���   ���������������������ٶ�   �����������������׶�   ����������׶   ���ö���   ����������׶   �������������׶�   �����������׶���   ��������������׶   �����������������׶�   ��������������������׶��   ���ٶ���   ��������������׶   ���������������ض���   ������������¶��   �������������ζ�   ��������������Ҷ   ���׶���   ��������׶��   ���������ض�   ���������������׶���   ������������������׶   ���������������ض���   ��������   ������Ŷ   ��ڶ   ������¶   ���������¶�   �����������   ������������������ٶ   ����������������׶��   �����������Ķ���   �����������������׶�   ������������Ķ��   �����������������������׶���   ������������������Ķ   ���������������������׶�   ����������������Ķ��   �����������Ķ���   ������������׶��   �����޶�   ������������ζ��   ����ζ��   ������Ӷ   �����޶�   ������������������ζ    ����������������������������ٶ��   �嶶   �������Ӷ���   ��������Ӷ��   ������������ض��   ����������������������׶   �����Ӷ�   ���������ζ�   �����������Ӷ���   ����������������Ӷ��   ������Ӷ   ��������Ŷ��   ����������Ӏ����   �����������������Ķ�             request_completed         Http_post_carta_respuesta             �      �      :   res://configuracion/ver_cartas_admin/ver_cartas_admin.tscn     2   Error al intentar guardar la carta en el servidor.              Guardando...      id        nombre        energia       costobatalla      tipo      imagen        raza   
   habilitada        descripcion       User-Agent: StarDeckClient        Content-Type: application/json     :   https://stardeckapi20230421233814.azurewebsites.net/Cartas        Debe seleccionar una imagen.               ,   El nombre debe tener entre 5 y 30 caracteres      ^\-*[0-9]+$    /   El valor de energía debe ser un número entero    d      %   El rango de energía es de -100 a 100         ^[0-9]+$   7   El costo de batalla debe ser un número entero positivo           *   El rango de costo de batalla es de 0 a 100     �     4   La descripción debe tener entre 1 y 1000 caracteres      HTML5         carga_completada                                                          	       
   !      "      (      )      1      6      A      B      C      D      E      F      S      `      j      s      v      }      ~            �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1     2     3   !  4   +  5   @  6   G  7   U  8   V  9   W  :   a  ;   l  <   q  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U     V     W     X     Y   '  Z   .  [   /  \   @  ]   K  ^   O  _   ^  `   n  a   y  b   }  c   ~  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q     r     s     t     u     v     w     x     y     z     {   %  |   '  }   (  ~   .     /  �   ;  �   @  �   I  �   J  �   S  �   \  �   ]  �   d  �   e  �   r  �   3YYYY5;�  W�  �  Y;�  V�  Y;�  V�  YY;�  V�  YYY0�	  PQV�  �  �  �  T�
  PQ�  �  P�  Q�  �  T�  P�  RR�  Q�  YYYYY0�  P�  R�  R�  R�  QV�  �  PQT�  PQT�  P�  Q�  &�  �  �  �  V�  �  PQT�  P�  Q�  (V�  W�  T�  �  YYYY0�  PQV�  �  PQT�  PQT�  P�  Q�  W�  T�  �  �  �  &�  PQV�  �  PQT�  PQT�  P�  Q�  .�  �  W�  T�  �	  �  �  �  ;�  V�  NO�  �  �  L�
  M�
  �  �  L�  MW�  �  �  T�  �  �  L�  M�  PW�  �  �  T�  Q�  �  L�  M�  PW�  �   �!  T�  Q�  ;�"  W�  �#  �$  �  �  L�  M�"  T�%  P�"  T�&  P�"  T�'  PQQQ�  �  L�  M�  �  ;�(  W�  �)  �*  �  �  L�  M�(  T�%  P�(  T�&  P�(  T�'  PQQQ�  �  L�  M�  �  �  L�  MW�  �+  �,  T�  �  �  �  ;�-  �.  T�?  P�  Q�  ;�/  V�  L�  R�  M�  ;�0  �  �  �  T�1  P�0  R�/  R�  R�2  T�3  R�-  QYYYY0�4  PQV�  �  PQT�  P�  QYYYY0�  PQV�  �  W�  �5  �6  T�  �  W�  �7  �8  T�  �  W�  �9  �:  T�  �  W�  �;  �<  T�  �  W�  �=  T�  �  �  ;�>  �  �  �  &�  V�  W�  �=  T�  �  �  �>  �  �  �  &W�  �  �  T�  T�?  PQ�  W�  �  �  T�  T�?  PQ	�  V�  W�  �5  �6  T�  �  �  �>  �  �  �  ;�@  �A  T�
  PQ�  �@  T�B  P�  Q�  �  &�@  T�C  PW�  �  �  T�  QV�  W�  �7  �8  T�  �  �  �>  �  �  '�  PW�  �  �  T�  Q�  �  PW�  �  �  T�  Q	�  V�  W�  �7  �8  T�  �  �  �>  �  �  �  ;�D  �A  T�
  PQ�  �D  T�B  P�  Q�  �  &�D  T�C  PW�  �   �!  T�  QV�  W�  �9  �:  T�  �  �  �>  �  �  '�  PW�  �   �!  T�  Q�  �  PW�  �   �!  T�  Q	�   V�  W�  �9  �:  T�  �!  �  �>  �  �  �  &W�  �+  �,  T�  T�?  PQ�"  W�  �+  �,  T�  T�?  PQ�   V�  W�  �;  �<  T�  �#  �  �>  �  �  �  .�>  YYYYY0�E  PQV�  �  &�F  T�G  PQ�$  V�  .�  �  �H  T�I  PQ�  �  ;�  V�  AP�H  R�%  Q�  ;�J  �  �  �J  T�K  P�&  R�&  Q�  �  ;�L  �M  T�
  PQ�  �L  T�N  P�J  R�   Q�  �  �  T�O  �L  S�  �  �  �P  T�Q  P�  T�R  PQQY`              [gd_scene load_steps=14 format=2]

[ext_resource path="res://configuracion/crear_carta/crear_carta.gd" type="Script" id=1]
[ext_resource path="res://general/fuentes/menu_carta_font.tres" type="DynamicFont" id=2]
[ext_resource path="res://general/fuentes/ARLRDBD.TTF" type="DynamicFontData" id=3]
[ext_resource path="res://general/default.png" type="Texture" id=4]

[sub_resource type="DynamicFont" id=1]
size = 44
font_data = ExtResource( 3 )

[sub_resource type="DynamicFont" id=2]
size = 26
font_data = ExtResource( 3 )

[sub_resource type="StyleBoxFlat" id=3]
bg_color = Color( 0.85098, 0.85098, 0.85098, 1 )

[sub_resource type="StyleBoxFlat" id=4]
bg_color = Color( 0.862745, 0.862745, 0.862745, 1 )

[sub_resource type="StyleBoxFlat" id=9]
bg_color = Color( 0.85098, 0.85098, 0.85098, 1 )

[sub_resource type="StyleBoxFlat" id=10]

[sub_resource type="Theme" id=8]
PopupMenu/colors/font_color = Color( 0, 0, 0, 1 )
PopupMenu/colors/font_color_accel = Color( 0.7, 0.7, 0.7, 0.8 )
PopupMenu/colors/font_color_disabled = Color( 0.4, 0.4, 0.4, 0.8 )
PopupMenu/colors/font_color_hover = Color( 0, 0, 0, 1 )
PopupMenu/colors/font_color_separator = Color( 0.88, 0.88, 0.88, 1 )
PopupMenu/fonts/font = ExtResource( 2 )
PopupMenu/styles/hover = SubResource( 9 )
PopupMenu/styles/panel = SubResource( 10 )

[sub_resource type="StyleBoxFlat" id=6]

[sub_resource type="StyleBoxFlat" id=7]

[node name="crear_carta" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 1 )

[node name="fondo" type="ColorRect" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0

[node name="titulo" type="Label" parent="."]
anchor_left = 0.5
anchor_right = 0.5
margin_left = -128.0
margin_top = 48.0
margin_right = 126.0
margin_bottom = 144.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = SubResource( 1 )
text = "Crear Carta"
align = 1
valign = 1

[node name="imagen_contenedor" type="VBoxContainer" parent="."]
anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -648.0
margin_top = -340.0
margin_right = -136.0
margin_bottom = 219.0
custom_constants/separation = 10

[node name="imagen" type="TextureRect" parent="imagen_contenedor"]
margin_right = 512.0
margin_bottom = 512.0
rect_min_size = Vector2( 512, 512 )
texture = ExtResource( 4 )
expand = true

[node name="seleccionar_imagen" type="Button" parent="imagen_contenedor"]
margin_top = 522.0
margin_right = 512.0
margin_bottom = 559.0
custom_fonts/font = SubResource( 2 )
text = "Seleccionar Imagen"

[node name="imagen_error" type="Label" parent="imagen_contenedor"]
margin_top = 569.0
margin_right = 512.0
margin_bottom = 595.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )

[node name="menu" type="VBoxContainer" parent="."]
anchor_top = 0.5
anchor_bottom = 0.5
margin_left = 120.0
margin_top = -388.0
margin_right = 724.0
margin_bottom = 354.0
custom_constants/separation = 10

[node name="nombre_caja" type="HBoxContainer" parent="menu"]
margin_right = 604.0
margin_bottom = 26.0

[node name="nombre" type="Label" parent="menu/nombre_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )
text = "Nombre"
autowrap = true

[node name="nombre_entrada" type="LineEdit" parent="menu/nombre_caja"]
margin_left = 204.0
margin_right = 604.0
margin_bottom = 26.0
rect_min_size = Vector2( 400, 0 )
custom_colors/cursor_color = Color( 0, 0, 0, 1 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )
custom_styles/focus = SubResource( 3 )
custom_styles/normal = SubResource( 4 )
placeholder_text = "Ingrese el nombre de la carta"
placeholder_alpha = 0.4
caret_blink = true
caret_blink_speed = 0.5

[node name="nombre_error_caja" type="HBoxContainer" parent="menu"]
margin_top = 36.0
margin_right = 604.0
margin_bottom = 62.0
rect_min_size = Vector2( 400, 0 )

[node name="vacio" type="Label" parent="menu/nombre_error_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )
autowrap = true

[node name="nombre_error" type="Label" parent="menu/nombre_error_caja"]
margin_left = 204.0
margin_right = 204.0
margin_bottom = 26.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )

[node name="energia_caja" type="HBoxContainer" parent="menu"]
margin_top = 72.0
margin_right = 604.0
margin_bottom = 98.0

[node name="energia" type="Label" parent="menu/energia_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )
text = "Energía"
autowrap = true

[node name="energia_entrada" type="LineEdit" parent="menu/energia_caja"]
margin_left = 204.0
margin_right = 604.0
margin_bottom = 26.0
rect_min_size = Vector2( 400, 0 )
custom_colors/cursor_color = Color( 0, 0, 0, 1 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )
custom_styles/focus = SubResource( 3 )
custom_styles/normal = SubResource( 4 )
placeholder_text = "Ingrese el valor de energía"
placeholder_alpha = 0.4
caret_blink = true
caret_blink_speed = 0.5

[node name="energia_error_caja" type="HBoxContainer" parent="menu"]
margin_top = 108.0
margin_right = 604.0
margin_bottom = 134.0
rect_min_size = Vector2( 400, 0 )

[node name="vacio" type="Label" parent="menu/energia_error_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )
autowrap = true

[node name="energia_error" type="Label" parent="menu/energia_error_caja"]
margin_left = 204.0
margin_right = 204.0
margin_bottom = 26.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )

[node name="costo_batalla_caja" type="HBoxContainer" parent="menu"]
margin_top = 144.0
margin_right = 604.0
margin_bottom = 170.0

[node name="costo_batalla" type="Label" parent="menu/costo_batalla_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )
text = "Costo de Batalla"
autowrap = true

[node name="costo_batalla_entrada" type="LineEdit" parent="menu/costo_batalla_caja"]
margin_left = 204.0
margin_right = 604.0
margin_bottom = 26.0
rect_min_size = Vector2( 400, 0 )
custom_colors/cursor_color = Color( 0, 0, 0, 1 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )
custom_styles/focus = SubResource( 3 )
custom_styles/normal = SubResource( 4 )
placeholder_text = "Ingrese el costo de batalla"
placeholder_alpha = 0.4
caret_blink = true
caret_blink_speed = 0.5

[node name="costo_batalla_error_caja" type="HBoxContainer" parent="menu"]
margin_top = 180.0
margin_right = 604.0
margin_bottom = 206.0
rect_min_size = Vector2( 400, 0 )

[node name="vacio" type="Label" parent="menu/costo_batalla_error_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )
autowrap = true

[node name="costo_batalla_error" type="Label" parent="menu/costo_batalla_error_caja"]
margin_left = 204.0
margin_right = 204.0
margin_bottom = 26.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )

[node name="tipo_carta_caja" type="HBoxContainer" parent="menu"]
margin_top = 216.0
margin_right = 604.0
margin_bottom = 242.0

[node name="tipo_carta" type="Label" parent="menu/tipo_carta_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )
text = "Tipo"
autowrap = true

[node name="tipo_carta_boton" type="OptionButton" parent="menu/tipo_carta_caja"]
margin_left = 204.0
margin_right = 404.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
theme = SubResource( 8 )
custom_colors/font_color_focus = Color( 0, 0, 0, 1 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )
custom_styles/disabled = SubResource( 6 )
custom_styles/normal = SubResource( 7 )
text = "Básica"
items = [ "Básica", null, false, 0, null, "Normal", null, false, 1, null, "Rara", null, false, 2, null, "Muy Rara", null, false, 3, null, "Ultra-Rara", null, false, 4, null ]
selected = 0

[node name="raza_caja" type="HBoxContainer" parent="menu"]
margin_top = 252.0
margin_right = 604.0
margin_bottom = 278.0

[node name="raza" type="Label" parent="menu/raza_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )
text = "Raza"
autowrap = true

[node name="raza_boton" type="OptionButton" parent="menu/raza_caja"]
margin_left = 204.0
margin_right = 404.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
theme = SubResource( 8 )
custom_colors/font_color_focus = Color( 0, 0, 0, 1 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )
custom_styles/disabled = SubResource( 6 )
custom_styles/normal = SubResource( 7 )
text = "Raza 1"
items = [ "Raza 1", null, false, 0, null, "Raza 2", null, false, 1, null, "Raza 3", null, false, 2, null, "Raza 4", null, false, 3, null ]
selected = 0

[node name="descripcion_caja" type="HBoxContainer" parent="menu"]
margin_top = 288.0
margin_right = 604.0
margin_bottom = 688.0

[node name="descripcion" type="Label" parent="menu/descripcion_caja"]
margin_top = 187.0
margin_right = 200.0
margin_bottom = 213.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )
text = "Descripción"
autowrap = true

[node name="descripcion_entrada" type="TextEdit" parent="menu/descripcion_caja"]
margin_left = 204.0
margin_right = 604.0
margin_bottom = 400.0
rect_min_size = Vector2( 400, 400 )
custom_colors/caret_color = Color( 0, 0, 0, 1 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_colors/background_color = Color( 0.85098, 0.85098, 0.85098, 1 )
custom_fonts/font = ExtResource( 2 )
syntax_highlighting = true

[node name="descripcion_error_caja" type="HBoxContainer" parent="menu"]
margin_top = 698.0
margin_right = 604.0
margin_bottom = 724.0
rect_min_size = Vector2( 400, 0 )

[node name="vacio" type="Label" parent="menu/descripcion_error_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )
autowrap = true

[node name="descripcion_error" type="Label" parent="menu/descripcion_error_caja"]
margin_left = 204.0
margin_right = 204.0
margin_bottom = 26.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )

[node name="crear_carta" type="Button" parent="."]
anchor_left = 0.5
anchor_top = 1.0
anchor_right = 0.5
anchor_bottom = 1.0
margin_left = -160.0
margin_top = -160.0
margin_right = -20.0
margin_bottom = -128.0
custom_fonts/font = ExtResource( 2 )
text = "Crear Carta"

[node name="cancelar" type="Button" parent="."]
anchor_left = 0.5
anchor_top = 1.0
anchor_right = 0.5
anchor_bottom = 1.0
margin_left = 16.0
margin_top = -160.0
margin_right = 125.0
margin_bottom = -128.0
custom_fonts/font = ExtResource( 2 )
text = "Cancelar"

[node name="mensaje" type="Label" parent="."]
anchor_left = 0.5
anchor_top = 1.0
anchor_right = 0.5
anchor_bottom = 1.0
margin_left = -480.0
margin_top = -104.0
margin_right = 480.0
margin_bottom = -56.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )
align = 1

[connection signal="pressed" from="imagen_contenedor/seleccionar_imagen" to="." method="Seleccionar_imagen_presionado"]
[connection signal="pressed" from="crear_carta" to="." method="Crear_carta_presionado"]
[connection signal="pressed" from="cancelar" to="." method="Cancelar_presionado"]
               GDSC   ,   "   >   �     ���Ӷ���   ����������׶   ��������������Ŷ   ����������¶   �����϶�   ����   ��������Ҷ��   ������¶   ������Ӷ   ���¶���   ������¶   ������������������������׶��   ��������ٶ��   ���������������׶���   ����������Ŷ   �����ٶ�   ���������ض�   ��������   ����Ӷ��   ������������������Ў����   �����Ŷ�   �����¶�   ����׶��   ����������������׶��   �������Ӷ���   ������������׶��   �����������Ӷ���   ����Ŷ��   ��������Ŷ��   ���Ӏ�����������   �����������׶���   ����Ӷ��   �������������������Ķ���   ����   ����������������Ӷ��   �������Ӷ���   ������Ӷ   �������������ٶ�   �����������Ŷ���   ���������Ķ�   ���������������������ٶ�   �������Ӷ���   �����������Ӷ���   ����������������ٶ��   ;   res://configuracion/ver_cartas_admin/vista_carta_lista.tscn       request_completed         Http_get_cartas_respuesta             :   https://stardeckapi20230421233814.azurewebsites.net/Cartas     �         imagen               datos/nombre      Nombre:       nombre        datos/descrpcion      Descripción:         descripcion    
   datos/raza        Raza:         raza      datos_2/costo_batalla         Costo de Batalla:         costobatalla      datos_2/energia    
   Energía:         energia       datos_2/tipo      Tipo:         tipo      datos_2/estado        Estado:    
   Habilitada     
   habilitada        Desactivada    >   Error al solicitar las cartas al servidor. Intente más tarde.     0   res://configuracion/crear_carta/crear_carta.tscn   (   res://menu_principal/menu_principal.tscn                                                    	      
                     %      *      5      6      =      >      ?      F      G      H      I      J      W      ]      k      l      u      v      |       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,     -     .   +  /   ?  0   @  1   J  2   X  3   [  4   b  5   c  6   d  7   j  8   s  9   t  :   u  ;   v  <   |  =   �  >   3YYYYY:�  ?PQYY;�  V�  YYY0�  PQV�  �  �  �  T�  PQ�  �  P�  Q�  �  T�  P�  RR�  Q�  �  W�  T�	  �  �  �  �  �  T�
  P�  QYYYYY0�  P�  R�  R�  R�  QV�  &�  �  V�  ;�  �  T�  P�  T�  PQQ�  �  ;�  V�  �  T�  �  �  )�  �  V�  ;�  �  T�  PQ�  �  ;�  �  T�  PQ�  ;�  �  T�  P�  L�  MQ�  ;�  �  T�  PQ�  &�  T�   P�  Q�!  V�  �  T�"  P�  R�  Q�  �  T�#  P�  QT�$  �  �  �  �  T�#  P�  QT�	  �	  �  L�
  M�  �  T�#  P�  QT�	  �  �  L�  M�  �  T�#  P�  QT�	  �  �  L�  M�  �  T�#  P�  QT�	  �  �>  P�  L�  MQ�  �  T�#  P�  QT�	  �  �>  P�  L�  MQ�  �  T�#  P�  QT�	  �  �  L�  M�  �  T�#  P�  QT�	  �  �  &�  L�  M(�  �  �  W�%  �&  T�  P�  Q�  W�%  �&  T�  P�'  T�  PQQ�  (V�  W�  T�	  �  YYY0�(  PQV�  �)  PQT�*  P�   Q�  YYY0�+  PQV�  �)  PQT�*  P�!  QY` [gd_scene load_steps=5 format=2]

[ext_resource path="res://general/fuentes/ARLRDBD.TTF" type="DynamicFontData" id=1]
[ext_resource path="res://configuracion/ver_cartas_admin/ver_cartas_admin.gd" type="Script" id=2]
[ext_resource path="res://general/fuentes/menu_carta_font.tres" type="DynamicFont" id=4]

[sub_resource type="DynamicFont" id=1]
size = 44
font_data = ExtResource( 1 )

[node name="ver_cartas_admin" type="Node"]
script = ExtResource( 2 )

[node name="fondo" type="ColorRect" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0

[node name="titulo" type="Label" parent="."]
anchor_left = 0.5
anchor_right = 0.5
margin_left = -296.0
margin_top = 48.0
margin_right = 304.0
margin_bottom = 144.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = SubResource( 1 )
text = "Lista de Cartas"
align = 1
valign = 1

[node name="crear_carta" type="Button" parent="."]
anchor_left = 1.0
anchor_right = 1.0
margin_left = -552.0
margin_top = 80.0
margin_right = -412.0
margin_bottom = 112.0
custom_fonts/font = ExtResource( 4 )
text = "Crear Carta"

[node name="volver" type="Button" parent="."]
anchor_left = 1.0
anchor_right = 1.0
margin_left = -360.0
margin_top = 80.0
margin_right = -251.0
margin_bottom = 112.0
custom_fonts/font = ExtResource( 4 )
text = "Volver"

[node name="desplazamiento" type="ScrollContainer" parent="."]
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = 136.0
margin_top = -356.0
margin_right = -136.0
margin_bottom = 516.0

[node name="lista_cartas" type="VBoxContainer" parent="desplazamiento"]
custom_constants/separation = 20

[node name="mensaje" type="Label" parent="."]
margin_left = 40.0
margin_top = 128.0
margin_right = 1000.0
margin_bottom = 176.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 4 )
align = 1

[connection signal="pressed" from="crear_carta" to="." method="Crear_carta_presionado"]
[connection signal="pressed" from="volver" to="." method="Volver_presionado"]
             [gd_scene load_steps=5 format=2]

[ext_resource path="res://general/fuentes/menu_carta_font.tres" type="DynamicFont" id=1]
[ext_resource path="res://general/fuentes/ARLRDBD.TTF" type="DynamicFontData" id=2]
[ext_resource path="res://general/default.png" type="Texture" id=3]

[sub_resource type="DynamicFont" id=1]
size = 18
font_data = ExtResource( 2 )

[node name="vistaa_carta_lista" type="HBoxContainer"]
margin_right = 40.0
margin_bottom = 40.0
custom_constants/separation = 20

[node name="imagen" type="TextureRect" parent="."]
margin_right = 256.0
margin_bottom = 256.0
rect_min_size = Vector2( 256, 256 )
texture = ExtResource( 3 )
expand = true

[node name="datos" type="VBoxContainer" parent="."]
margin_left = 276.0
margin_right = 676.0
margin_bottom = 256.0
rect_min_size = Vector2( 400, 0 )

[node name="nombre" type="Label" parent="datos"]
margin_right = 400.0
margin_bottom = 26.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
text = "Nombre"

[node name="raza" type="Label" parent="datos"]
margin_top = 30.0
margin_right = 400.0
margin_bottom = 56.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
text = "Raza"

[node name="descrpcion" type="RichTextLabel" parent="datos"]
margin_top = 60.0
margin_right = 400.0
margin_bottom = 240.0
rect_min_size = Vector2( 0, 180 )
custom_colors/default_color = Color( 0, 0, 0, 1 )
custom_fonts/normal_font = SubResource( 1 )
text = "Descripción"
fit_content_height = true

[node name="datos_2" type="VBoxContainer" parent="."]
margin_left = 696.0
margin_right = 1096.0
margin_bottom = 256.0
rect_min_size = Vector2( 400, 0 )

[node name="energia" type="Label" parent="datos_2"]
margin_right = 400.0
margin_bottom = 26.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
text = "Energia"

[node name="costo_batalla" type="Label" parent="datos_2"]
margin_top = 30.0
margin_right = 400.0
margin_bottom = 56.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
text = "Costo de Batalla"

[node name="tipo" type="Label" parent="datos_2"]
margin_top = 60.0
margin_right = 400.0
margin_bottom = 86.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
text = "Tipo"

[node name="estado" type="Label" parent="datos_2"]
margin_top = 90.0
margin_right = 400.0
margin_bottom = 116.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
text = "Estado"
           [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST�   �            �  WEBPRIFF�  WEBPVP8L�  /��1�䶍 �������SI{�	�$����z�}���m۶m۶m�6�m۶{����%�n�ն�3��VǍ���R�#+rC�^���һ����n�l��d_<��(���� ��Bi�#���=�m`Y�8ѣ�S^B3.�����>�0.wU�S�e5f_�����Jh�]�W$04��I�U<0J�cӑ��M�%�`pӓ7�MF�,�p���}ݫ��M=�9�$.�2�=A�M�w!���XG+�q�}�Ӌ|w��T�Q�k<�F�&,ku���8���ruY?�xP��c����y]�B�۲	���,�*+���TTE+�]Y��_� 8{���]�H��g{�r�M1�(���uٔ��p(rKVl�Ҡ���S��9H�����M�$׼nl����VIvptSz4��'F6ESS�K?�
M�7��������ʴ��,�@a���êHd&D-2�jĢ:�� �g��.���n
/�����S;�YY�z����2����SB�^#4�7<����%�<��Qb�ל�F�N��/��_�`�P@ӣg�0���V��
`5���kJ,#�wI\���8��쓆OZ�[B^���P��S �.fZm��zӅ�i��_�I������XW�e�2�$��� ���\B���CW���HU��˩���a ���6�+�Z#QXu�Nr���b��bQ�ip����a/�%bQ��p\��y-��`Q��p^�0�-/�D�����Z�`/m�Y��(�9�Op��E5z�V���
����<,�����@|��
�XT�,��v�x�O�>���BGX
��xZ.ߤ�R,*��B�;�W���N*���,��O|S!���¢b>�~�2Y��
y�Rh��U�n��-�9$�����W�E��
[���h��E�ҁτ&�*��X����?8�m�X���t�/��p�K����M[tbQ:��tB{��y���u���
ƢTV��g���= ׁ��'��Y�s�"�HeW��}aX��N2]����@�S�Y��*��R�ĢX&p�ZTGKa$���yr���Ph7X
�X�^%�i�Q|�����Ea���9�J��z�7f�(�썑$,�����т��E�i� ��w�]�*���q��>�i�Hm���f�	�>S� :�g:a���$6��pH�G�'����?ο.\������%��i��ĩ3fiF��(�D.t.O�lo�5͡�]o`��Bs�M�$t`��	�͈;4�tO�(э���pD�M��yo�#x8�����\
�'#S���Ҁ&NfF�o▤Ӛ�����&�;ҩ�}�(��"���gb�?f��R�P�#�	�!���r��s
��F��Q����)p9��ѽ��J݁Dz�{���:d-v>Q,�G*W���"%���?�������g��v�/;C,�ޖQ���`6�����    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/default.png-6e604cb9653cbc87e211de440d2f2b02.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://general/default.png"
dest_files=[ "res://.import/default.png-6e604cb9653cbc87e211de440d2f2b02.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
                  �  pDSIGj�]d  ��  �OS/2no��  x   Vcmap,�B  �  .cvt ���M  �  bfpgm1��  D  �glyf:�  ,  z�head�T@�   �   6hhea��  4   $hmtxG$M=  `  �kernR.T�  ��  
�loca�)K  
�  �maxpL  X    nameZ���  �  �post,�A�  ��  )prep���  �   u    ��R���_<�      �>��    ���U���P	{�   	          ��P  	�����	{                �    � r  \       � u   ��  �3   ��3  � f               MONO @  ���R��            (�        +          +        @        G        \        q        }       Y �     �     �               	   V0  	  *�  	  �  	  *�  	  *�  	    	  $*  	  �N  
               (    4    B    T    `    p    |    �    �    �  $  �  -  �  
  �    �  
  �    �Copyright � 1993 , Monotype Typography ltd.Arial Rounded MT BoldRegularArial Rounded MT BoldArial Rounded MT BoldVersion 1.51ArialRoundedMTBoldArial � Trademark of Monotype Typography ltd registered in the US Pat & TM.and elsewhere. N o r m a l o b y e j n � n o r m a l S t a n d a r d�������� C o p y r i g h t   �   1 9 9 3   ,   M o n o t y p e   T y p o g r a p h y   l t d . A r i a l   R o u n d e d   M T   B o l d R e g u l a r A r i a l   R o u n d e d   M T   B o l d A r i a l   R o u n d e d   M T   B o l d V e r s i o n   1 . 5 1 A r i a l R o u n d e d M T B o l d A r i a l   �   T r a d e m a r k   o f   M o n o t y p e   T y p o g r a p h y   l t d   r e g i s t e r e d   i n   t h e   U S   P a t   &   T M . a n d   e l s e w h e r e . N o r m a l N o r m a a l i N o r m a l N o r m � l N o r m a l e S t a n d a a r d N o r m a l N o r m a l n y N o r m a l1KG=K9 N o r m � l n e N o r m a l N o r m a l N a v a d n o A r r u n t a N o r m a l N o r m a l N o r m a l N o r m a l                                            	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`a bcdefghijklmnopqrstuvwxyz{|}~���������������������������������������������������������������������������������� ���������������    H @   ~ � �1Sax�����    " & 0 : �!"!&""""""""+"H"`"e%����     � �1R`x�����      & 0 9 �!"!&""""""""+"H"`"d%������    ���^���C�  �  ����      ��������j�yޖޢދވާ  �t�q�_�/�0���    F r           �   �     �                        �                 � � � � � � � � � � � � �  � � � � � � � � � � � � � � � � � � � � � b c � d � e � � � � � � � f � � � � g � � � � � h � � � j i k m l n � o q p r s u t v w � x z y { } | � �  ~ � � � � � � � � � � � � � � � � � � � � � � � �         V }�D��/f� ,Nm��{�>�K�,b���		v
)
v
�9��	{��!r��A��N�2e��L��4a����z�&��$��"r��K��:��>��+��6���N���7CO[gs����3?KWcny�����������I�  �!F!g!�""�#$#i#�#�$
$s$�%{%�%�&	&q&�'7'�'�(^(�)0)l)�*�+&+�+�+�,,s,�,�-P-�-�-�....�/#/6/I/�/�00N0�0�0�0�0�1�1�1�2u2�3?3\3�3�4�4�4�4�4�4�4�4�5555&525>5J5V5x5�5�6646R6�6�77Q7�7�7�7�8F8�8�8�929�9�9�:<:�;J;�<�<�=H@Q@V:966544300/-., )  4����������������W�VW � 
	I 0 ��d� v*?++++++++?+++++++++   ��
	�� ,�%B F had�%F hadSX#/#�/#�Y9< � UX�*!Y�C< � UX�*!Y-,9-,<-,�-,�Ev�#>� �԰ #B�#B�Iv�  � C>��F� C#D�C� C�` � #BS�%e#x-,�Ev� #B�#B�  � C>� �F� C#D�C� C�` � #BS�%e#x-, EhD-,+-,�%B?�9< � UX�*!Y�C< � UX�*!Y-,�%B?�9< � UX�*!Y�C< � UX�*!Y-, F had�%F hadSX#Y/#�-,?�-,?�-, F had�%F hadSX#Y/#�9-, F had�%F hadSX#/#�/#�Y< � UX�*!Y-, F had�%F hadSX#/#�/#�Y< � UX�*!Y-    I W Z�>�p��  Q���bZX-���XVP���`-+!
 � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � } u q m j h f d \ P B /9#sdPL��J3'
�������������qb\P
���H3-)%
  � � � � � � � � � � � � � � � � � � � � � � � � � � � �  } h f + #    R          � �� qj � N� 1 {� \� �� d� !� T� �� %� �? � `� �� q� d� � m� ^� �� X� B� �� �� ^� T� ^� Z� ;� 7� �� f� �V �� �V d �� �� '� �� �� � �V \V �V \� �V m   �� =� #� !  ++ � �? � � s ��� R� R  �� X  N� Z���  P� �+ �+�j� �+ � }� �� L  �  P� �V T� � �V 7� /+ 7V +  ;? � -� B� 7� 7� fV � �V \ �� R� R� R� R� R� R� X� Z� Z� Z� Z+ �+ +��+��� �� L� L� L� L� L� �� �� �� �� L+ V� X� � P� D� � y������  �� �� #d ���V \� 4� Td ;d ;  9� �� 5� � 3d 1   # #% Fj V� 9� V� �� Td ���d � � �� �  �   � 7� 7V \? P� N �� ��� \� L� �� �� T� %V   ++��� � �� �������� L� �� �� P	� 1� 7V �� 7V �V �� �������� V \V \V \ � � �+ �� � ���� � �� �� j� V� ^� V mV T? ��  � H  +V V �  �� m� D� 9� 3� D� D� 5 ��j `  R  �U    !!!R\��)
U��,��  �����   "@    	   �	 +1 ?+0&54632#"&"&54632� 	WGV:+.56*f=[W??YZ{ߌ=S]wpBD�X^[��OG>WW>FP   q�f�   @
	

*1 /?/?0#5!#5!u�53��53�������  ��Z� M Q Y@M  O. .
	 Q0 D7 . H	=	)
! 4 QPONKEDCB@80/)($ a+ +1 ?????*0?&546;#"&546;7>3237>32+32+#"&54?##"&546#3u%�EC/9hAGEC�//&58%�0
/-49%�DC3<oCDCD�/0-2:%�/'@3:M�;߲�k2?#A/2=�:B"8,
[��4@,6.(%�l2<��@11=�7<-8-)=��UK8-9���   N�h� < C J D@3ED>=;0)
H�H E  >81 �    & ,�A5 *+1 //////////0#"'&'#"&5.54632.54675432>54&�k�9-1I4b!~|�:>CkЏ'$u�u8K8->(QC��p��?@T^X�enk9lBC3l-2Ij})�`"857�[r�~�;6,.T}�A0M*&RWH�%[����jT� RSOQ���JzQW_   1����   , 9 J \@Q:07F   CK	(00  = B7K!	;	 
I:-4B@�-
C�4%;� �
**1 ??**0#".54>324&#"326#".546324&#"326#"&547>32���Z�P>�lNvR(�8G0981J5���[�Q��NuS(�8G289HI6��� (.F!%B��O�y��Z0c�V�w9oVYp9~����P�z��0`�V�w8mW�|M��7#J%%#  {���� 3 B O K@BC@41 	I<I;    #<4'	C4F7  @#�F L1    �7, *+1 *+04>32>32#"&'#".54>7.32>7.>54&#"=a�~�[��2VP!?72/H>;%�%K./X�A��b}Ǆ@0WTKMfe%G^43`V.Y�f[[EE]#4�]�Z^�Rp�V;hZ �DC0,�b �/'4G<u=N&I|�NK}e[+^��o;vQ.TH& ;,R��AY?>TV:ED  \���  @
+1 /?0#5!`�53���  ��Rs�  @� +1 ??0467>32#".'.�4jN/@9-1\QEDWW1.9>0Og6���NE	���������FM��   d�RV�  @� +1 ??0#"54>54.5432VuwCNC2T[CDZT2FLB;X;����n8	��G��H�5ob���   !` = -@#-1  '$
=  7 $ 1 �:4 +1 ///+0>32#"&'#"&54767.'.54632.54632�AvF#3��R60&&_KL40%1
\dT�J3!HoG/%$/�</#+3V># 0v��X-3}\ +#/7"?�%55,Ge  T �V�  #@  
 $    � +1 //+0%!!!!!!��������}����  ����  @
 ~
+1 +0"&54632#"&5476FB`^@0N,Ty1')uQI?V4eJc�e))A  %���  @
(
w
+1 +0!"&5463!2���HKIJ<JIH�C56CC65C  ����  @ 	�	
+1 +0"&54632B>ZV??YYPH=XW>GQ  ��%�  @		z
+1 ??0	#"547>32��+)f(:25�9B%X\�\D0*  `��`�  & +@#	 #4#4	� 	�*1 *+0#"&'.5467>324.#"32>`(6D؄��= ";�g�,L��,h\�g,hY\h*Ϥ�`v���S�u��W��C�_����w�����{��  ���R�  @	� 
+1 //??0%#"&5467>32#"&B�X*A@Qy�p"/5@�=J���C,30&9~�$RH���R   q  s� 3 .@&2     )4'	 )	   )�- +1 *+0%!2#!"&5467>7>54.#"#"&54>32�
NRAB� KT6 ��.Rm9=i>�K
/;92B>{��lFj;{���8�@71DS8$w"��:u{;@e8s�HB9E�zK0 p�O|�s�D   d��d� E 6@-2<56 ?/ 4E< 55'	
   �"9 +1 ?*+02654&#"#"&54>32#".5463232>54&#"#"&54631\�jZ=O.)
4"(C?y�oa�v<WQNk6I��vx�{?K844wl>sK�rT7<HGuleMo"8X'A64sh?5d�Ld�D*l�L[��KV��-:G!��=xOu�710;  ����  " '@ !  . "	  " �  +1 ??/+0%5!"&54>7>3232+#"&!��
__4C/�+M]LL=D98E�R��VJ'+(�F?���*G:5�MKM�E   m��s� 3 3@+!    + )/	  % 5! 6	1 �	+1 *+0!632#".5463232>54.#"#"&547>3!2��%9�x`�~H�����]A1T)(�TMt?DrFVJ�-1LTLV�L���LH�d��@'FaYcP�Y`�C*iG-?�VNw4@  ^��u� & 4 8@/""6    6. '5	*2�* �2*+1 *+0>32#"&54>32#"&'.#"2654.#"sD�c_�yB�璨�N�Ѕ��c>0*HdB5i$Ie�>lA>qE�QNG��a�恤A�*�dd�D)C5/<I=4j����[�EB}T��   �����  @)		i+1 ?+0!2#"&5467!"&546?�`Ve��9	M@=J6z�~��TSX�<E*����Oh�,fOUS@�3C�=AE(  X��h�  * 9 =@4+661 '6	 
+#  6 	� .    �# *+1 ?*04>32#".57&4.#"32>"32>54.�mӍw�x:edUp9z젦�x���@tHf�ApEFp@�^sv]/M75`Fd�j>m�Mb�1!k�V~�tt�~d`�9Nt>�zNwABx�u\Uq5I,;^6  B��X� ( 7 8@/'$.5    64 $6	')1 �)�1*+1 *+0#".54>32#".54632326764.#"32>BB�c^�w@H��p�ʊJN�Є��d>0,Ff@9f$H	%C]7_��e>qG�NOI��`g��L^�������ac�D*B11<I:5kADsT0����A|   ����=   @
 	   �	 +1 *0"&546324632#"&B>ZV??YY�Y?=X`8=XPH=XW>GQ�GNOF8^Z   ����=  ! !@


   � +1 *0"&54632#"&54764632#".3B`^@0N,Ty1&(u�Y?=X]8*E)QI?V4eJc�e))@&GNOF9](C   ^ �L  @   j +1 //05L���C����������  TsV5   @$
$
   g  +1 *0!!5!!V����s�   ^ �L�  @   j  +1 //0		L���A�\�J�N   Z��B� ( 4 :@/&!/!1    /)	$
 
2�
�2,*+1 ??*+04>32#"&54>7>54&#"#"&"&54632Zz꜑�yE_{")d4G4VI@9'w^nh$"_8M�=[X@?VZ1_Àk�lU�]n/''1hDCT{]@89F)PnolqO��OG?VV?FP   ;�P�� G W [@OHT90     T:F
	    K=!4:	&
O= HB!    �5 �HB
�+
**1 ?/?*+07!32>54.#"76$73#",54 $32#"&'.5463232>54.#"��6�[�������E=@�r�Y�4������v����=�w`��QZW�ԃ�����1dQ^�J1E,X�L�o�3D��xԜXU�uf������Q|pk�s<��Q��r�o��㬆���w7<V-WΗ�0��sx���k5U@!��  7���� ! $  @.#
$		$#"\	+1 ???/+0%'!#"&5467>32#".!JF��F):B8Vw-3S=>S3#-U<#2"'���ݦ��nMR4@9�)sL//JUG�Nl13U+Y�]   �  `�  ! , B@:    ".		0$    .	'  ) �  #�*+1 *0)"&5463!2!! 54&!267654&#�@aSU_�i�=4P*�!~kC����?-��0oy ��W_NaU%_s@�f\��{�/��T�odP��*;*4oI  f���� . )@!,) &)    	&)		�"+1 *+0#".'.546$32#"&'.#"3267>32�E��t��A:R)g����H399#:�s��`�v��-8>5L�F��b,]LE��m��h��]3N6Bml��� ��p{:IJ  �  ��  # .@'    )	    
)	
� �*1 *0!2#!".54632>764.#X���X�.`K;��e�}QRV��JTZ!�����8M��p�گE5@1YG3`V�� ~4��;   �  
� ! @ +.	
)	 �+1 *0!!2#!!2#!"&54>3!2f�chDCBE���FGGF��aU&Q?GEE���=22?�_A64AV`N@Q%?34?  �����  @ +.	
	 �
+1 ?*0!!2#!#"&54>3!2���DCDC�SABS&Q?�GEE���=33<�\YZ[h@Q%?34?   d���� 8 >@5!5!+    .5-     )+	1-&�-�&
*+1 *+0#"$&546$32#"&'.#"32675#"&5463!2�;.�������if����HS: ;7L�dg�s=��g�]�SUG=Q>V5T��8C6HBh����iOx�48OVX<G��w����62�2<1@L  ���u�  (@(
		 �
  �*1 ????+0!4632#"&5!#"&54632��QBCSTBCP�TBCPODCS�\�ZZY[�}[Z[Z��[Z[Z�ZZY   �����  @		�
+1 ??074632#"&�RACSSC@S��ZZY[�}[Z[  '����  @    
)	�
+1 /?+0#"&'.54632324632�2楕�= (N=;<"PJ�ODEQ� d�Hy�^i8�BFJDHM\B!+ZZZ  ����� ( @&		  �#+1 /??/??0>32	#".'#"&'.54632�G*;1@OC���,,MB>N6���TB&FODCS��`,*K6A@����>],1H5X$���\Y("JFBZZY  �  ��  @'		� 
+1 ?+0!2#!"&54632�ZHMLI�3aUQBCS��F56CV`iZZY   ���� , ,@(	#		"�"
�	
*+1 /??/??/?0%#"&546;2>;2#"&5#".��K><LdU\SK$��$KS\UdK?;L�NE4H(���TTSU�`CNX��#XNC`�xTTTT��Z[UF-FU   ���o� " )@		 �	
�*+1 /??/??0	4632#".'#"&547>32#;I>@J�(@80��N=?LX3(9+-!��hUUUU��2C#V��TVWSkH)-9,F  \����  $ #@) !)		 �
�
*+1 *02#"$&546$4.#"32>%�G�\�������]a�Nh�}Y�m??s�Yr�qӹ������lo����i���yC��|}ʅBr�  �����    0@'    .	. 
	 � �	*+1 ?*0!#"&5463!2#32>54'&���T@CRZb}�[Z�D������i�J9@;�aY\[XjbTt�i����@,dQa=A   \�yH�  6 =@45.$,$)   ,)	2. )    �  �)
*+1 *+0%#".'#"$&546$32>54.#"327.54632;A�2;*"a�N�ӫ��]a���G��Z>;h�}Y�m?�JN/�42[�,S1- @,T8Jm����i������*G��yC��|���#F&#.   ���b� ( 4 <@2    *.	0, 		% 0  �0  +�	*+1 ??*0##"&5463!2#"./.!!2>54&'&/hRBGNV`�d�9Ej7��O�q?%@*2D1*w@eh[��
k�M>74s�)]X\Yh`Vl�P��)*���9!/HF�mr*h�m%YN=]   m���� < C@98* 001"    /	-
8-3'�   	 �3 *+1 ?*+0#"'.5463232654.'.54>32#"&'.#"�����ٍd}K:/AAv`��Y�v��}����ł<K835(p|s�0TVc|ɍO���xR;�]6M<;F^={\I[0%c�y�eCoz:5U3:S]eG,@.Fd�  ����  @     	&		�
+1 ?+0!#"&5!"&5463!2X��RABS��LJMI�MKL���\YZ[)C79BD77C   ���s� ! %@    )	��
*1 ??+0463232654632#".�QBEQ7�~��PCCSC]PԎ���H^�ZZZZ�/{�[���[YY[�?��WJDI��  =��B� # @!	^

+1 /???0	>32#".'.54632yLM<4&A%	��&2S<<S3&��	R>L?�)�N=1&? 31�B7cK0/Mb7�2:3T]  #��\� 1  @.	$	X'
+1 /??/?/??0%#".'&54632>32>32#".���!RD7G,�P;Q8��&VJKS ��=::Q�!OHDR �o��dWE)Kg,�V-9Nhc��!\`FIVc��XCL<M:)Z�%d]FDU  !���� / +@ %+	 	 
`.+1 ????+0	.54632>32	#".'	#"&54jH��''K6>E=��)&/8GM��7*&">'*:$1���� &4#6G��>Y)*CIc��d-@*C.Cs�P�!?S%#:"#4K��^2(&B?J  +����  @	� +1 ?/??0%.54632	>32#"&���/'O:=??")2$8K&.��TABR��+KT3JEg�C�)81I0'NE���/[ZY    �  (@ .	.	
 ^+1 ?*+0!"&5463!2!2#!"&54>y��yDEEDB�6R�@EDDE�Hab0V�<13?�HV`��935>WI*%9   ����  @ 00
�
+1 *0#32+".546;2=�����=O%T]�A@��Vkj(Q=�^X:1j  ��%�  
@	 ??0#".'&54632�g*+��51;&3�R!X%5F�V*0D   �B�  @0	0
�
+1 *0#"&546;2+"&5463?�@CC@�\UT]�@CC@��;/0;X^�]Y;/0;   s�7�  @   	 +0!3!���y�n�������  ��� �f  
@Q 
 +05!� ff   R���  @" +0#"'.54;2�-+B9�3�;<TT+�*  R��j? , : =@5$-56

?-    5;*	'!  - �$ 
�2*1 *+0%#".5467>7.#"#"&54>32#"&326765?c�si�V�|ΓVMyhiK3.Cfء��U3O2*R@<�XP^LQ� %�MMS�Sp�*#le:t%;.H�XU��`�RM�*EO�1C<>WG8>�  �����  - 1@)    *4
	   #1	�&
  �*1 ?*0>32#".'#"&5463232654.#"�M�v��q?x�g?oN7-J9:EC<?D�yg�>rLNzF7�_PU���|ϘS144MOOM�SUQ������l�UU�   X��`? * "@(% "1
"4	�
+1 *+0#" 54632#"&'.#"3267>32`=}�w�����j�{AI4"-2mTy�&Hf=Ru-:*2B93ti@'���>bo01D#'LL��M�[/LN.4L  N��{�  - 2@*    *4
	    "1	& ��

*1 ?*0%5#".5324632#"&32>54.#"y7k}Jb�z?��v�MC>>CH98I��ExGHwGGyHKvA�?O)S��y QT�TVOM�LNNQ�o�OK�tm�SU�  Z��h? " ) &@
 '6
A$ 
:	 #�+1 *+0!32>7632#  4>32%!.#"���IyI1QL@3'*4:u�s����H��{��rv��
�kf��]�H180.*%c[<,yϔO��og=����  ����
� & 0@(    5	   ! 5
		 %  � +1 ?*0354>32#"&#"32+#"&5#"&54wAA���2"NJ*C�SICM=:MK=B%R��Eu&6WQA^C$�-QUUQ�7,b   P�Ry= . ; C@:,   ( 94%
	    24	6	   (�6 
�/ *1 ?*+0#".5463232>7#".54>325463232>54&#"y:�Ϛ��xD0<-/9P4ju/?�r��nC|�at�IF7O4��sDyL�xu�u��Ā>O}B2?57';jy�X\���{ƈEY_%GNg�E��I�i���  ���T� & ,@"    1
	$		�  �!*1 ???+0>32#"54&#"#"54632�4cxEh�.K>�NmIuIA�G@AI-�k<F#XT1yO��RT�̓�SH=���QU��SST  �����   @#
	   � +1 ??+0#"&54632'"&54632�N<<KK<<N�9QS75RP���RTVPQRR�F@:KDA?G  �j�R��  % 0@' #    )
 # � +1 ?*+0#"&5463232654632'"&54632�D�|�:/5
7%L><K�9QS75RP��bc}�DA0=Vo�QRQ�F@:KDA?G  ���L� $ @"	
	 �
+1 /??/??0%#"&54632>32#"&5�S6?HFA?J39<+3Do�G:26d���OUTR�[_VT�jB<,A1<d��H13AK6  �����  @		�
+1 ??074632#"&�I>>LM=<K��RTSS�`SSV  }���= < 5@+' 8*$1!
	0			*�-3$� �*1 ???+0#"&54.#"#"&54632>32>32#"&54.#"N@>M>C�UM?>OG:8KG�cg�0E�`p�(#N@>OBC6a���VVVV�grI����UWWUMPKBUPRSTQXRJ���VVWU�XjH@6E   ���R= ( *@! %   1
			� �"*1 ??+0>32#"&54&#"#"&54632�H�ol�*K<=LKpIxM=;LD;$:#�!_Y^V2tZ�RTVPǇ�WL=���SSVPNM"D  L���=  ! #@ 4
4	� 
�

*1 *+0#".54>324&#"326�L��}|ƑKL��z|ʐK��|PzBAyR|�zΔOP��{|ΒOP��{��S�lk�U�  ��R�=  * 2@*    !4
	    '1	�
$ �*1 ?*0>32#"&'#"&546324.#"32>�M�i~�{G|�au�H�M2D;:IBuGq��rDtF�!_Y���~ӏM^[�f�]Y�NMO�)l�S����O�   P�R{=  + 1@)   )4
	     1	$ ��
*1 ?*0#".54>3254632#"&32>54.#"yO�h�wxՂn�>H99H�P1��GtCIzJ+J`6n���OS������[]!KNML�d�b`n�MM�tR�W+�  ���y=  @ 
 )
		� +1 ?+0#"&5432>32#"&#"�N<;L�D<1gVV�E(s,<L*q�SSTR��VTTVVG2A%?|�  T���= 7 ?@64* -  '  -=
	<	4*0$�    �0 *+1 *+0#".5463232654&'.54>32#"&'.#"�nך��d@1+.*ueRim}��jb��j�q;?:*;&THJbHzk�SLq�SZ�D-@*&IHI/HB#M~\R�W,JZ+/<00(0?/+7$Vu   ���� / 0@(   ) 5
	    1$	 -( � +1 ?*035467>3232+32632#".5#"&546�<%4*d:=WQ3	',R!5����)$;>A%�BK#'KE�7+7,�
@E+5'BFV�8++7  ���R= ( *@!  &  1	

 �#�*1 ??+0%5#"&'&546323267654632#"&R1l�Rc�+3J=>L SGEzL==JG88I�#>T)RHW�RQRQ�K_�IRB:�LQRQR��NNQ  7��= ! @
	
l
+1 /???0>32#".'.54>32N��674I��#+?-:E!'��	"<#D3����NAF.0*�vV="5?]�027#N   /��R= 0  @.
#		

Y+
+1 /?/??/??0>32>32#".'#".'&546327��E<=E��411H� E<>G"��FX-?* 	�!F3D0���7YA;;EU��bB;-D.*U�rSJ:>ZH��oq#AY�\#,FM   7���= ( *@ &	

	 
	o#+1 ????+0%#"&547&546327>32#"&���,=/4I8��9D70?*��+?/6G��:H5/AX#��=4A*+Pb'I6*>6:��<4=+9'����S*+>6  �R= * ,@"#    '2

    % k +1 ?/?+07&54>32>32#"&5463232>���$?";<��*/+9��.X�{xx98/6+;=NI!#<$KF�`qLV!8F$�\{�K4E/3E     % # &@ 5
0		 g+1 *+0	!2#!"&5467>7!"&5463!2s�ABAB�NM6UZ�~S�jTVA<sW]&��=0.:D;#G_d��b#@/83B/+   ;�R�� 0 @$ - ! � +1 ??0#".'.'.547>7>32`GP 	&.&2�[�N;_(:H=���1':.O,m��c^1@4yL�Z��CD;/3J%-?cuߊ�w6> \���t  ��R��  @	�
+1 ??0#"&54632�=11@@11=J��DEFCoCFG  -�R�� 3 @$ ! 0 � +1 ??0.54.'.5432#"&54>7>5>�6D,+,%3�]�Q>X+9F?��FK'-,N"Jj�b_e.>6wK�Y��!BE545K#+Aa��>;!72a]��p   Bh�  @    c
+1 +0">323267#".R��B�ZE}�~#?�Baf-H{�f��J?$5.JF��?'"C"�� 7��� 6 $    �Vs�� 7���� 6 $    �Vs  f�V�� R S@IJ:7>E#>)0    Q'E*#	    L	 A# �!   '�A+ *+1 ?**0#"&'.546323254&#"#"&547.'.546$32#"&'.#"3267632-enL�k5]31-$�9/D�H�z6Lt<g����H3-<'O�c��`�w��"g5L4fG�SL;\4 V", ?:/@�愱�h��]3N)-IkG��� ��q�e�J77��3h�� �  
8 6 (    �Vs�� ���o> 6 1    ��s�� \��� 6 2    ��s�� ���s 6 8    ��s�� R��j� 6 D    � �  �� R��j� 6 D    C �  �� R��j� 6 D    � �  �� R��j� 6 D    � �  �� R��j� 6 D    � �  �� R��j 6 D    � �    X�f`? D M@B>.,19 11$
93 	    N		 4 �   
�4  *+1 ??**0#"546323254&#"#"&547& 54632#"'.#"32>32�jgM�k�P!�7)<�������j�{AI45%>h^y�&Hf=VcY0/1Ck�	XG;Y1FV+	%0%���>bo01D3ZU��M�[/B�4J-C�o �� Z��h� 6 H    � �  �� Z��h� 6 H    C �  �� Z��h� 6 H    � �  �� Z��h� 6 H    � �  �� ���)� 6 �    �� �� ���� 6 �    C� ������m� 6 �    �� ������R� 6 �    �� �� ���R� 6 Q    � �  �� L���� 6 R    � �  �� L���� 6 R    C �  �� L���� 6 R    � �  �� L���� 6 R    � �  �� L���� 6 R    � �  �� ���R� 6 X    � �  �� ���R� 6 X    C �  �� ���R� 6 X    � �  �� ���R� 6 X    � �    L�ww�  $@   0     �	 +1 ?/+0!"&5463!4632!2#!#"&���ABC@D78EBABA��E87D�8;/0;MKKM��:1/;��LKK  VV��   "@ >>
�	
� 
*1 *+04>32#"&732654.#"V4WtAU�VV�W���\>>Y)G'?[�BxU1U�WV�T��?XW@+F)[   X�}`� < E F@9>@   /@43
	=   '4	95
"	
'   /&$�D+ +1 ??/??*+0#".'32>32#"'#"547.54>7>32>32&#"�^Ow>J3*'S)�-VcY0/1C>}�w=8Z"CT_�E @/0z�[;`!;��NzED��cm+0E)s�rB�4I01tgB	��(2=A)��zU�~44C-')C��sS�o�   ���� Q K@A-    BL4?	G8 2 7     "%	I
&	  6) 920�O; +1 ??*+032+>3232632#"%.#"#"&54>7>54'#"&54;&54>32#"'.#"�RZ<0�[q!AQ0C�'9�-F�jA��&8'*@�&I883E
TJK;1t؋{�DtL7a eU\q7!=*4e�)H1SYF@E8.;0+�K>$6b�Z{�m=Fy�1Llhcw^9c  P�Rq� F Y R@HPME>42/  
6    4	64'GPM9   R 	�"9   C, IGE>42�  *+1 /*+04>32#".#"#".5463232654.'.547&654.'.�c��b�u>F,*/QSCM[N�X�rAfa�=v�au��=H6+
2:�Qc8i�o*ZD'�w�u;dil4w*HkTDD�X�[4Wg3(>)c4J13Id4Q_}T^�6p�H�b6?ny62M?/�W:(EH�G?JaB�of�KO)FA?AUC$=8A0''  D���  @
	
y 
+1 +0#"&54632��yz��{O�P�{��{z�P�   �qf�  $@    T	 ��
*1 //+0##.'&547>3!##T�gGmn`(��M����hj��!8'����;!P�  y��{� @ C@:!4    5	0   45)	-=!�%7?: �=�*+1 *+04&#"#"&54>7>32#".5463232654&'.5476�LBAP!J;;J	9����[-#BoLX-Z�a]�V=,5+*@1H^HKcJH�5CA~Y��PRRPX>fb)d_M�T3x0Z>;bDptC]�VFg-)=>=J33z48�5Zus ������   / ? L@C80BJ

J8B(	0�$<
 
 �  ��4,
*+1 *+0#!2#'.+32654&#2#"$54$"32$54$B��Zz>tg5A6`�C/BB0+�Z^RV��u���������aҧ�䦧������;-9iEV}O^��XU^�/F08�u��������a��a͖��䧧�㤥���  ������  ) 9 A@8 
*B E D
2B"	* 6�6
�
�.&
*+1 *+0&#"327!".54>322#"$54$"32$54$R�5}`m.Y>�2�P��b�f^�v�����u���������aЩ�祥�������'��{a�C�7��`Ĉ�jVu��������a��a͖��姨�祤���   ���   :@-  D		�
 �
�
*+1 /////+0##5!##!!##}�����������������\3��5����s�   ��`�  @	"}
+1 +032#"54?>��3pr9A+-':�rh*TI(   #���   @   -  �
�	
*1 +0"&54632%2#"&546�+EB.-DDY6B.,ED�<42?984<�64<<4-D  ��Rd  ;@2   M    M 
   
	 b +1 //*0!!!!'!5!!5!7e�R�q�/���d�������^d9��p��p��9pp ������ . 2 7@/    .	.!
)0
   #.+	2  1 �#. +1 /*0!#"&54>7>3!2#!!2#!!2#!"&5!#���Z"SC;F	�*#BB%FEDG��DCDC��]HGGH�7]U�R��`�PZA,*(+Y:?32;��>33<�R845>S[��   \���� ) 3 < W@N54+* .7   .)		    7)$	4*;2 + �; 5    �2' *+1 *+0?.546$327>32# '#"&546	.#"	32>54�#CBa����]?C" (\)�\������55" */)�/�N}�f�o�r�q�%b��iCHB/*$<_+��ߪ���l�7 .(J6�.6y뢔��Zfr   4 ��A # 2 A ,@ 7  Q0 ?'  ?;730,'$]	+1 /////+0>76'.'.7>.'&7>7>76.�KGI-H�xJK�YF�ZUAX�HY�KJx�G-IGXk1=cF"Hn6QV�DJH87nH?yS2j`C<. 	IrBN�]	7CU@C7	]�NCrH	 .<�KJ>Q%8[&?eCA&&[81k1K   T  Vd   -@%  
 $     $	   � +1 /*0!!!!!!!!����������d}}�����   ;  5  
  @

M 	 
 h +1 *035!5	;�����wqq���h�i   ;  5  
  @

 M	  
h +1 *0%!55	55���w��qqq��)��   9���� 7 8@.  % 8    3 8', 0	 -2�' +1 ???*035#"54;.54632	>3232+32+#"=#"54�ᎎ��$?23?*C!$"3#2?�����⍍⇉���^\�804?>E��=+=,#:,�%\^�^\P��P\^   ��h^%  /@$    ,	

	 	 � �
*1 ????+0!5#"&'!!3265!X*q:R\'��gH^o�PLSI����!>�Bj��!��  5��� . B :@-" T2>* @>;42*'"$8/ �$ �8*+1 /////+0'>&'.'&67>676&'.'&.767>�PL�]f�E*,1%0WNf�U-F3	H2:�]Xve-yT8C.R�;TOuO)+#<,O/g>$+Vf"$�yI��*/��Oft,8:OrHo�>GM8Pc�A�5;u&�CAk:im:J�)-�X�  �#�  /@'
 S 3
	 	Z+1 *+0#.#!	!2>73.#!"#	3�) %y{��/���SZ@'/-'R$��--��: �#���fJ:�"�J']d�x�/�   3�1m  @@6 M
   V    �    � *1 ??*+03!5265!3!52654#5!"�/WA��d`�#/WA��fa�/���EH//Bd��uEH//Bd�//   ��=� = N@B  #<" 8	1,	5)0$=: #�108&�$ � �**1 ?//?+0#&'&>7>7#"#>7>3!!7>73'&'.7�� 21(O? <a)J+#*%bA���Q*+0B $`(B"	5����L;C
4$% J=%�'@'m3+?���,T!.*S�Q	0g<�^   �cU 6 @#	*   2 �  +1 /?//0'.'&676>'.54>7>7>&'.�D&u.'%"5'
7=:88%��F���L1(2#<"4qJL�m�o'Z̟x="S
V"I���   #'�� ( 3 >@5)1    F	  %  I1 *"   �* �.*1 /*+0#"&54>7.#"#"&54>32#".'5326GlKi�Gx�!+FP-A+"4E�k��!9%(!&
�54,P\-)rQFS(04/#Z*".W7x�?L.+_!/%�.  ,W  #)��   "@ BB
� 
�
*1 *+0#"&54>324&#"326�X�o��X�ll�Y�UKJUTKLT}e�V��e�WW�e\ff\[dd   F  �� B N@D:6-$!	 
8U8
*& , 2	

62-)%$!	x+,>:	 	x*1 ??*+0!33!'.'.67>7>32!2673!>76'&#"�!��3ACYqd(E+#,4mIE�hi�EIl5,#+E<�CA5��!=>B%BUj��iUB%A@:7��LN/95T;g��N_Z*)11)*XaN��gWa'91L��7,WAVTjjT����VAV.  V��? ; C Q d@[&*=ODL 6 @9*6 
	/  E$A=   L<	 =$'I�= < E9�' 2�I"**1 **02#!3267>32#".'#"&54%$754&#"#"&54>32>!.#"53267>��H9���BtQJ�"15\2o�|f�x2���9b2J�d`F&:2;iՙ��BN���	�jo���1��j_RK�
?z�fi�a�H=+=%l]`C$K=����@Gk\=}+;1R�V4B>8�.���m�IADI>WG8(D  9���D ) 1 : S@J32+5-$ * !  54
	   -4	2*09' 3 !  �0 +  �9 *+1 *+0#"&'#"&546?&54>327>32	32654&#"\3bK��|c�D%,*((-`L��zf�E1 )'���TGk|����HkPzB�4��{˖O:3%,$&,(-��|ΒO643 %*���TJ��O��HS�lL   V�T;= * 8 0@'2+
    (%! 	6�.6�	
*+1 ?*0#".54>7>763232>7>322#".546;B��z��w)I;pB#c5F7?>VHv]Ma7969J�>X+F%*E)Y
C��Lk�k>mZ6e<ENfDCBdQ?6KZ;Nn9_C7:OOF%F+(C+GN   ��R�=   @ 
   �	 +1 ?/+02#"&546#"&547>32V>XZ>8^Y�"	UIS=+,56,=OF>X^8GN�o��7T^xq8K�Y__  TyV5  @$
� 
+1 /+0!!!V��� y�  ��V  @
  /?////0'%		5!+�H���VD���b
�f  ���T�� 4 8@/6   . 5 '    *6!	
.- s2+1 ??*03>32&#"32+#"&546323267#"&546�49$O�ns�S�57,?GORRTm-Q�hv�70	UP9m'JP[
<ozj8=>?6h��[%;7-��[�d8>9(2Wdy(2=-  74  % *@"!
    d +1 ////////////0'%&'>76'%&'>76�K:�_��BhE(XO�q5D^B'K:�_��BhE+	XO�q5D^B'1aRX-47iJ V'�1cPX-88iJ V'    ��   @R	
 _+1 /?+0	!	!�A�/F�AL��#�A   � ?�  0 *@# *   -('{% |*1 +0#"&'&547632#"&'&547632��6'3%�++�68&7���6(3%�--�4<%7
-����&!$3(7B$CR1#(����-$3(7H!FR2"  � ?-�  2 (@! # . 	  {&% |(1*1 +0%.54632#"&54%.54632#"&54���8$;6�-�$5'7�R��

8$96�++�$5(6�/!"2R��#+C��7(2%"%/!"2R��?(A��7(3$   ���B   # $@    	�!
�	
�
*1 +0"&54632!"&54632!"&54632 <ZW??Y\�<YV??Y\;[W??Y[PF>WW>GOOG?VW>GOPF>WW>FP�� 7���8 6 $    CVs�� 7���> 6 $    �Vs�� \���> 6 2    ��s  P��� . ? J@@3	>;    +3)(	/)	    ;)		 	  + �0 �6#
*1 ??**0!2#!!2#!!2#!"&5#".54>32>54&#"32676^HJHJ���IGFJ�C���{mUJ���ߝRS�ۆ��S,V�����.[�RU�)@�A55@��C45@�ewuOchci����g^cFH�\������ɇBSIm  N��^? ) 1 ? O@E6    .'=3 
	2@+   64	$
 +*�+   '�*9 �2 
*+1 ?*+02#!32>32#"&'#".54>32>!.#"32654.#"Z��t���CsNZpKD"(2bϔ��T����u�RN�v�
~lm���C|Qs�AyQ|�?��t�c�D5MB6*.�fOW�������MRSN�.���pel�T��n�T�  ���b  
@9
 +0!5!����  ���b  
@9
 +0!5!����   \{\�  , (@! % *	*(~  ~
*1 +032#"&54>3232#"&54>329[[CIaU{0 $'5>�8[[CJ`2O[$!#'78�WA@Sulc�e&,N;WA?VxkM�e;%-K   L{L�  + &@  $ 	)'~  ~
*1 +0#"&54632#"&547>%#"&54632#"&547>�8[[BK_Sy1')5<�9]\BL^Sy2 &)98�[>@Vxkb�f'-J;Z??Wvme�e&,!G  �}��  @ ~
+1 +032#"&54>32J9[[CIaU{0%&5>�WA@Sulc�e'-N  �{��  @ ~+1 +0#"&54632#"&547>F8[[C.P,Ty1')5<�[>@V5eIc�e'-J   T �V�    !@!
$ 
!
   � +1 *0!%".54632".54632V��#A)T98UT9#B(T98USV��)C!CKLB9T��+A"BKLA9U   %  ��  	 !@    			p+1 /+0!#	3#	-{�s�{�{����P����}�k �� �R� 6 \    � �  �� +��� 6 <    �Vs ������  	@ /?0	#"&547>32m�� *.H "?��7#J,"%  ���� C e@9 ==:3"3(3=3=3$**0$''@6= :3;"� /_]�23�2�2�� /��]/��]99//]3�23�21032676632#" #"54633547#"54633!2#"&'&&#"!2#!!2#�#�Iy8$4<C������&V{&dA��@.3/P`nwB%��J%��F�T)E>��L$,SL	1D46GK��Ib-I  � ??�  @
 |+1 +0#"&'&547632��5'1&�++�4:&6
-����$#&1&9B$CR1#   � ?\�  @	
 |+1 +07.54632#"&54ɾ�

8$96�++�$5(6�/!"2R��?(A��7(3$"  ����-� ' 5 A K@@    <#6	   "(5
	3
,		0 9? �)0  %! � *+1 ???*0354632&#"32+#"&5#"546#"&546322#"&546mI��y�%3ZM6B�;0BG::GL~C�F;8IE<I8�7JK65LJ%R��;:*%	UYAg �%QMPN�c-5���PPQONOZ�N7?GH>7N  ����-�  4 C@9    6	  / &5
	+		#! � '2. � *+1 ??*0#"&54632354632&#"32+#"&5#"546-G:9HF;��@I��y�%3ZM6B�;0BG::GL~C9�NNRPP�OO�RR��;:*%	UYAg �%QMPN�c-5  L�ww� 1 4@+  ! 
0
	 # * 0	/ +# 
  � +1 ?/*05!"&5463!!"&5463!54632!2#!!2#!#"&���BAAB��@CBAE89BBAAB��BAAB��D77F��:01:�;/0;�LLMK�:10:�V:10:�KLL  �*�j 
 @ � 
+1 //04>32&�)D(?Y���)D(W>^MM  ����  @
 ~
+1 +0"&54632#"&5476FB`^@0N,Ty1')uQI?V4eJc�e))A  P��P  ) %@  #   ~
(&~*1 +0"&54632#"&5476%"&54632#"&5476�B`^@0N,Ty1')u�HB`^@0N,Ty1')uQI?V4eJc�e)(@cQI?V4eJc�e))A   1��	{�   , 9 J X f m@b:K07F   CK	   \V(00  d=OB7K!	;	 
I:-4B@�KY
�`S
�-
C�4%;� �
**1 ??**0#".54>324&#"326#".546324&#"326#"&547>32#".546324&#"326���Z�P>�lNvR(�8G0981J5���[�Q��NuS(�8G289HI6��� (.F!%N�_Y�P�����9I1890K7B��O�y��Z0c�V�w9oVYp9~����P�z��0`�V�w8mW�|M��7#J%%#����QP�y�����w8oUWq:� �� 7���D 6 $    �Vs�� �  
D 6 (    �Vs�� 7���8 6 $    �Vs�� �  
 6 (    �Vs�� �  
8 6 (    CVs�� ���)8 6 ,    ���s������mD 6 ,    ���s������R 6 ,    ���s�� ���8 6 ,    C��s�� \���8 6 2    ��s�� \���D 6 2    ��s�� \���8 6 2    C�s�� ���s8 6 8    ��s�� ���sD 6 8    ��s�� ���s8 6 8    C�s  ����=  @	
	�
+1 ??0#"&54632�N<<KK<<N���RTVPQRR  ���  @     	u
+1 +0'+"54?>;2+".�dd*)P)o$4"8B10s-L# �uu2'�- <�&$  ���  @   %	t
+1 +0"#"&54>323267632#".�3$#,O--M�0!	&"UY"H~>D;)%2]7;&:*$8�8  ����{  
@F
 +0!5!��+���   ��  @H 
v
+1 //+0267632#"&54632XJe."L�Z��$+f=LBA'@�S�e*E@J   ���� 
 @ �
+1 //02&546V4 qqC�5G88G.C   ��#   "@ PO
 �
�

*+1 *02#".546"32>54.TUzzU9^8zU,:;+/'zUUz8^9Uzi:,+9.'   j�fo��   &@     K		O
�
+1 *+0632#"5463232654&#"#"&5>�	�MzBH�h�`&GL795`I<[/6W0B,&"(  V�X�  $ #@   	"	!  	q+1 +032#"54?>!32#"54>?>9�3|h\"+-)9��3�_^"+
	-*1�
|['TI(
�ST10   ^��L 7  @ A � +1 /+04>3232632#".^Jc".+Gq'P�6Ei:�5sM3+/#+%7+S  ���  @     	u
+1 +07>;2+"./&546;2�db**P)n"/!8-3,sN*!�uu2'�	3�&
 �� m���D 6 6    �Vs�� T���� 6 V    � �    ��R��   @   � +1 ?//?0%#"&54632#"&54632�"L1@@11==11@@11=��-WcFCCFG)��FDFDCFG      ��  1 =@5*) +  7      )	/$�$
 +  � *+1 *07#"54;463!2#!".#3267654.+32�+ww+V`���Z�hsWܚ�QR�߄�=ZO��d¦QN6��^^�`V8M��p���gNA1Y��m2U~��`�lA,2  H���� 1 ? H@=   =4
	64		,(%)( :2   /�: "    �2 *+1 ?/?*0#".54>32.'#"&546?&546327>3232>54&#"'
{�Q��������H? E$ZL&-9-56.-J/50%&+��G{LJ}J�|x�'v� ������������0N$1-0 #!21$:)!-#��m�QP�l����� +���8 6 <    �Vs�� �R� 6 \    � �    �����  & +@!.
. 
	 #�#
 �	*+1 ??*0!#"&54632!2#32>54'&���TBBQOD)F��K=:����g�K9@�YZ[X�XZ'!EOA0K=�c�:��B*cR]AA   ��R��  * 3@*    !4
	    '1	�
$ �*1 ??*0>32#"&'#"&546324.#"32>�M�i~�{G|�au�H�M2D;:IBuGq��rDtF7�L_Y���~ӏM^[�f�]Y/OMN��l�S����O�   m �;�  )@" 
 	  	   
 m +1 +0%'	7		%�-�Ѻ//���/����-1���/����Ѻ1  D��  @
� 
+1 //?/0#"&547>32#"&L�1-\ASA %-^(4%�V'3<N1*��r2  9��� ( %@    K	C"
& "  � +1 *0!"&54>7>54&#"#"&54>32!2V�N382PQ�=C587+ (".D�f��v� 37-�2"$AB>gD),3,W#)"1eB[S{�$'"+  3��� ? 8@02/;5K    "K;
K5(
  
 "�%8 +1 **0"&546;2654&#"#"&54>32#".5463232654&#"# ,/)%+H70*0'!-F�WS}D.*>A��]�H2&(=;7SC:"%.*$,-
++T84X70E#\8d�Gf*-E<@53<   D����  @ Q J@>  * K1%   DBI:D	MJA-"> P: �5" IG� *+1 //??*0#"&547>32#"&!"&54>7>54&#"#"&54>32!2	#"&547>32L�1-\ASA %-^(4
�N292PQ�=E386&$("0D�ei�@M�r37-����"(.H #%�V'3<N1*��r2�0"$AB>gD)*7*S)&#2fB<d:AilO &!+?��7#J("#   D����  3 6 I G@7 51, G& E:6"874*-H6 �% ?=� *+1 //?////?+0#"&547>32#"&5!"&5467>3232+#"&35#"&547>32L�1-\ASA %-^(4R��=>:.16)(.g1%%1��R�� '.H	 "%�V'3<N1*��r2�SN3)&\##41��)CN,,+�/��7#J$  5����   1 q u@kFC?8damgZ+   (?KM	  2 T8Km
   KgZ   G "( W. �    <% TQ �Wj *+1 /**0%5!"5467>3232+#"35#"&547>32"&546;2654&#"#"&54>32#".5463232654&#"���{!9#)14+)+g.&V��-�� *-H #	�� ,/)%+H70*0'!-F�WS}D.*>A��]�H2&(=;7SC:LN\!#\%!41��)CN-+/�/��7$J("#��"%.*$,-
++T84X70E#\8d�Gf*-E<@52= ��v�  
@Q 
 +05!vff   `
� 6 F G@@   	 (C   -" 3*%);'    %�?   0 3*	 �75 *1 *0&&546326326632#"&'#"&'#"&5467&54326654&&#"�+%?8$=&jmGg+,4%8?''4(&@7#20duDZ9(;$8?((5�6[77]77^67\5�,4)7B)'7,$D5(;&cn:c4&:)5D".5((C6(;&ncll7_77^87]56^       �3 f                     �           	 
                        ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] ^ _ ` a b c d e f g h i j k l m n o p q r s t u v w x y z { | } ~  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �DeltaperiodcenteredmacronEuro        
� �  �  -��  J��  M �  ���  ��� $ &�� $ *�� $ 2�� $ 4�� $ 7�L $ 8�� $ 9�� $ <� $ Y�� $ Z�� $ ��� $ ��� % �� % �� % $�� % 8�� % b�� % c�� % h�� & �� & �� ' � ' �f ' $�� ' 9�� ' : 3 ' <�� ' b�� ' c�� ) � ) �  ) $�f ) D�� ) H�� ) L�� ) O�� ) R�� ) U�� ) b�f ) c�f ) l�� ) n�� ) |�� * �� * �� * $�� * *�� - � - �f - �� - �� - $�� - b�� - c�� . �� . &�� . *�� . 2�� . D�� . H�� . R�� . X�� . Y� . Z�� . \�� . g�� . l�� . n�� . |�� . ��� / $�� / &�� / *� / 2�� / 6�� / 7�  / 8�� / 9� / :� / <�� / Z�� / \�� / g�� / h�� / �� / ��3 1 �� 1 �� 1 $�� 1 b�� 1 c�� 2 �� 2 �� 2 $�� 2 7�� 2 9�� 2 :  2 ;�� 2 <�� 2 b�� 2 c�� 3 �� 3 �� 3 $�L 3 D�� 3 H�� 3 R�� 3 b�L 3 c�L 3 n�� 4 7�� 4 9�� 4 : 3 4 <�� 4 I L 4 J 3 4 M  4 S 3 4 \  5 �� 5 &�� 5 *�� 5 7�� 5 8�� 5 9�� 5 <�� 5 D�� 5 H�� 5 R�� 5 X�� 5 Y�� 5 Z�� 5 \�� 5 h�� 5 l�� 5 n�� 5 |�� 5 ��� 6 �� 6 �� 7 � 7 �� 7 �  7 �� 7 �� 7 $� 7 &�� 7 *�� 7 2�� 7 4�� 7 D�� 7 F� 7 H� 7 K�� 7 L�� 7 P�� 7 R� 7 U�� 7 V� 7 X�� 7 Z�� 7 \�� 7 ]�� 7 b� 7 c� 7 g�� 7 n�� 8 �� 8 �� 8 $�� 8 b�� 8 c�� 9 � 9 �� 9 �  9 �� 9 �� 9 $�� 9 &�� 9 *�� 9 2�� 9 4�� 9 D�� 9 H�� 9 L�� 9 R�� 9 U�� 9 X�� 9 \�� 9 b�� 9 c�� 9 g�� 9 n�� : �� : �� : � : �� : �� : 2  : D�� : G�� : H�� : R�� : U�� : X�� : \�� : g  : n�� ; &�� ; *�� ; 2�� ; g�� < �3 < �� < � < �� < �� < $� < &�� < *�� < 2�� < 6�� < D� < G� < H� < L�� < R� < S�� < T�f < X�� < Y�� < b� < c� < g�� < n� D E�� D J�� D S�� D W�� D Y�� D Z�� D \�� E �� E � E E�� E O�� E X�� E Y�� E Z�� E \�� E ��� F �� F �� F K�� F N�� F O�� F \�� G Y�� G �  H �� H �� H E�� H J�� H S�� H Y�� H Z�� H [�� H \�� H ]�� I  � I  L I  L I �� I �� I " f I D�� I H�� I I L I L  I O  I R�� I l�� I n�� I s�� I w � I |�� I � f I � L J �� J �� J D�� J H�� J J�� J O�� J R�� J S�� J U�� J l�� J n�� J |�� N D�� N F�� N G�� N H�� N J�� N L�� N O�� N R�� N S�� N T�� N V�� N X�� N \�� N l�� N |�� N ��� O Z�� P X�� P ��� Q X�� Q Y�� Q ��� R �� R �� R Y�� R [�� R \�� S �� S �� S Z�� S \�� S ]�� U � U �� U �  U �� U �� U D�� U F�� U G�� U H�� U J�� U M�� U N�� U O�� U R�� U S�� U T�� U U�� U V�� U W  U X�� U Y�� U l�� U n�� U |�� U ��� V �� V �� V Z�� W � 3 Y � Y �f Y D�� Y F�� Y G�� Y H�� Y R�� Y T�� Y l�� Y n�� Y |�� Z �f Z �L Z D�� Z F�� Z G�� Z H�� Z R�� Z T�� Z l�� Z n�� Z |�� [ F�� [ G�� [ H�� [ R�� [ |�� \ �f \ �L \ D�� \ F�� \ G�� \ H�� \ J�� \ R�� \ V�� \ l�� \ n�� \ |�� \ �  ] F�� ] G�� ] H�� ] R�� ] |�� b &�� b *�� b 2�� b 4�� b 7�L b 8�� b 9�� b <� b Y�� b Z�� b ��� b ��� c &�� c *�� c 2�� c 4�� c 7�L c 8�� c 9�� c <� c Y�� c Z�� c ��� c ��� g $�� g 7�� g 9�� g :  g ;�� g <�� h $�� l Y�� l Z�� l \�� n Y�� n Z�� n \�� | Y�� | [�� | \�� � $�� � b�� � c�� � $�� � b�� � c�� � G�� � U�� � V�� � W  � Y�� � ��3          �         �0��	*�H�����0��10*�H�� 0`
+�7�R0P0,
+�7�� < < < O b s o l e t e > > >0 0*�H�� �t]�f���-8�K�����0�@0��Ǐ7ے(�<����g0	*�H�� 0a10UInternet10U
VeriSign, Inc.1301U*VeriSign Commercial Software Publishers CA0960409000000Z040107235959Z0a10UInternet10U
VeriSign, Inc.1301U*VeriSign Commercial Software Publishers CA0��0	*�H�� �� 0���� ��ieR�T�(�b�TU�D�EJ;�~���Ȁ������k�)��vs���b�<�u� lMԘ��is��bN1����}����GQ�o�d5�}gw��Q����>�w��C����ʣ���A�="HH� 0	*�H�� �� ���uj����dxç2ur�&`0L�H4�RJQ��S-{�1��e�AA/�cz�s��z�AЎ:��84D�u��qā85J��>2�!�����8\���8d��T�����_����݈)��O��qd1<<0��0�)��ъ�Ľ5Ǜ����SV�0	*�H�� 0��10U
VeriSign Trust Network10UVeriSign, Inc.1,0*U#VeriSign Time Stamping Service Root1402U+NO LIABILITY ACCEPTED, (c)97 VeriSign, Inc.0970512070000Z991231070000Z0��10U
VeriSign Trust Network10UVeriSign, Inc.1,0*U#VeriSign Time Stamping Service Root1402U+NO LIABILITY ACCEPTED, (c)97 VeriSign, Inc.0��0	*�H�� �� 0���� �. �h|,-.�����W�S�u��3*���	[4���	��Z���������%�}Xsjx�q��X�)�X^��-bX��q��"X/���6����MJ��;"�V�~!�l��JG�j��6��	-Ӵ9� 0	*�H�� �� :��>���{թ��y���=q#�+(ߌe��,��Z�b��������V�kbEƢ��5"�r-��|	�C��M���lX�
5�ʉ��p�*}a���q���fbB=��"2�"���d$���0��0�6 ���C�!�FX���F��%�`0	*�H�� 0��10U
VeriSign Trust Network10UVeriSign, Inc.1,0*U#VeriSign Time Stamping Service Root1402U+NO LIABILITY ACCEPTED, (c)97 VeriSign, Inc.0970512070000Z991231070000Z0��1'0%UVeriSign Time Stamping Service10UVeriSign Trust Network1402U+NO LIABILITY ACCEPTED, (c)97 VeriSign, Inc.10U
VeriSign, Inc.10UInternet0��0	*�H�� �� 0���� �a�����G�ܴ^i�
b�1�����F�I:���?���xZ���cEO�n0�6�-	��o'�Q`5O�TOз,B�Ѝ�^����㖴"IBlӘ�V���.�:��X��"e匫x���GBh[-}��0	*�H�� �� m`��_�i��{p+b#D Q�#�t�I�'\��q5+���ൖ苧K�s�H	��ڋ����	%V�N�G��WF�8V�!��&;-%2Λ�@G��mGv��0����;~���*1+���ݰ�UApF-,~0��0��U��?d�s �E�40	*�H�� 0a10UInternet10U
VeriSign, Inc.1301U*VeriSign Commercial Software Publishers CA0990319000000Z000416235959Z0�]10UInternet10U
VeriSign, Inc.1301U*VeriSign Commercial Software Publishers CA1F0DU=www.verisign.com/repository/RPA Incorp. by Ref.,LIAB.LTD(c)981>0<U5Digital ID Class 3 - Microsoft Software Validation v210	UUS10U
Washington10URedmond10UMicrosoft Corporation10UMicrosoft Corporation0��0	*�H�� �� 0���� �cGx���V��VVZP�0��)����t�o�[)
G~ЧT��Gͺt+ԅ"1�Y�7[��D�?\ޭ�@`'ZWJs8v6�9 �+�T<1�
�"��e���GB�̎�g?lM"r�J��ޒ���w���o0�k0	U0 0U�0��U��0���{���C�h��8�n;���c0a10UInternet10U
VeriSign, Inc.1301U*VeriSign Commercial Software Publishers CA�Ǐ7ے(�<����g0!U�000
+�7� 0U
0@0�6
+�7
��#0��)�'https://www.verisign.com/repository/CPS������This certificate incorporates by reference, and its use is strictly
subject to, the VeriSign Certification Practice Statement (CPS)
version 1.0, available in the VeriSign repository at:
https://www.verisign.com; by E-mail at CPS-requests@verisign.com; or
by mail at VeriSign, Inc., 2593 Coast Ave., Mountain View, CA 94043
USA Copyright (c)1996 VeriSign, Inc.  All Rights Reserved. CERTAIN
WARRANTIES DISCLAIMED AND LIABILITY LIMITED.

WARNING: THE USE OF THIS CERTIFICATE IS STRICTLY SUBJECT TO THE
VERISIGN CERTIFICATION PRACTICE STATEMENT.  THE ISSUING AUTHORITY
DISCLAIMS CERTAIN IMPLIED AND EXPRESS WARRANTIES, INCLUDING WARRANTIES
OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE, AND WILL NOT
BE LIABLE FOR CONSEQUENTIAL, PUNITIVE, AND CERTAIN OTHER DAMAGES. SEE
THE CPS FOR DETAILS.

Contents of the VeriSign registered nonverifiedSubjectAttributes
extension value shall not be considered as accurate information
validated by the IA.
�6�4https://www.verisign.com/repository/verisignlogo.gif06U/0-0+�)�'�%http://status.verisign.com/class1.crl0
+�70��0	*�H�� �� Uט�TJ�0�����̪���q�Jp�\8.�F�RB��� mra4f�U�U�м[M��?���lQ^7ߞ�@p�< �<*�.o���m��욛8��l�KO�X���ؗ�Q�������^!���ܬzX1��0��0u0a10UInternet10U
VeriSign, Inc.1301U*VeriSign Commercial Software Publishers CAU��?d�s �E�40*�H�� ���0	*�H��	1
+�70
+�710
+�70	*�H��	1t�|�Y�3��Z%�0f
+�71X0V�,�* A r i a l   R o u n d e d   M T   B o l d�&�$http://www.microsoft.com/typography 0	*�H�� ��d�$P�K��o��Ọ�F _"�yH�yҴ�~!=�>�;|@�ZD+~�rp�@���\$
��N1CCj�>M�3������Z�Zo�X�J�n���(V1����_��>3��2�E����6*~���.����0��	*�H��	1��0��0��0��10U
VeriSign Trust Network10UVeriSign, Inc.1,0*U#VeriSign Time Stamping Service Root1402U+NO LIABILITY ACCEPTED, (c)97 VeriSign, Inc. ���C�!�FX���F��%�`0*�H�� �Y0	*�H��	1	*�H��0	*�H��	1990818191325Z0	*�H��	1���"[b�]RzH�Z_P�0	*�H�� ��X�0H��I�÷�W�as/�*�B;3H��N�i����.� ��2��'5�7��!�^��[Z�ߦy��l!�Ke��md1�ȶ}��O	DE���b�-�1����0Fי�>&~���Wt��Ý��    [gd_resource type="DynamicFont" load_steps=2 format=2]

[ext_resource path="res://general/fuentes/ARLRDBD.TTF" type="DynamicFontData" id=1]

[resource]
size = 22
font_data = ExtResource( 1 )
 GDSC                  ���Ӷ���   �Ҷ�                                                  3YYYYY;�  Y`    GDST\  \           J  WEBPRIFF>  WEBPVP8L2  /[�V '���$8ǰk�ّe#N�nz�'�F2����h?���ۨP�v �aK�� ��l�Z`�W���
Ilz���	�I�I�I�I�I&Bx��0�3�3�3�3�3��ZD��`jp+NF���,p��g�X��q��C#p�au�U�7p���`z�J�b 0���e��.:�]tRa�DD]tһ�w�I��a�!�P���;6�������`��j��A56送������i���4>Zyɤ�Τ��`�g&]t&]t&#bG��q@�� ��chq������X����No�C���4�� ��#'��C����|{�ЬAwԛ��.�͡#�-�K�5��e��.��֜..{��""�w�I�r��n�m�饙nݛ)p�`���w[����J������b�� �qIK��TM&wS��f*�(���嚌n�Nk�T2k
�X^�l���T2�[BS�K�%0�L%Ӧ��yɤ�
����ta�Eg��0�m%S��fiM�wK`��0fk��i�Y�d�Z���f	���T�WL�0��l�z�L��%��)� ��KS@��V�)���Z|lc��G1����S���.z3�z�M���w�����e���9La�Rl�=�$����v[���V���:�h�� �����096v^�lAx�^=���_�ƪ���y�al���8�1���eO���d��&�`It�w�1"ٍ�jt-��`�B)֠�^3�}%s8{`S,нApG4��s��f�F/^��5z��z�����5{Kh�ޢO�;G<����=�;�/���W��2W��z����k�&C:��,��\��Z"�Q�'��'k	�|:B�&���������矘D�Ԙ�?�o'�P�i�s8Y�jN &�G���?�'��:+ൻ��_��1m~75&�����kw�~��ă9��\���� ��:�!y^=펚��1z������i�i�����~ ��D�x٢Z'��a/>�dmq�>���č�C	-��a��'���/���l��C���{s��Z	���F�{wh���.�*�A��M�؂�0�r6w�X*�P�X'�Z���{(� ��:Y5��n��:Yk$8���n�����B�n�E�]��H��:Y5&��m��:Yk �tx���r>���x[�C���Ҝ��U�@�p�NV���ggkH]P� �;[á櫆��X'��C�VK?в��7O��{����F@��d~�#X�Â '-'�%(�99-{sA�jr��kjr�@7�a����C&���侠��B�n��'�j��L��RM��,�'����@�a;9��9}`�i�{3"55xXMC~�����],�rv�v[��݄������\M���=x�S�����]�%X��Nz�w�u-��r�q֜�,{�꼆��)�ݔ\TS�^#�+ZN��K�㊜�-x�y�\�S��g������>�ˎ��������������I{gI�����%_��;�Ւ�/��;�Œ&���^2��	�4����,:�'�T�$n 辚�q7p ����b�3���%Me�����F��\���2�|�ķ��n��<lb☇_��A�|������Y8���w���ll��9�%3}���v蘁_2��tK��7��^'S�+�o6&ѝd�ol�l�c;ɜ���[pd݃�q}�/�tљ�8�u�Τ��tG_��fD9�N^�b�a7���������S��s�+��fcg�c)�����;��&�H�W�2Y�(b�e��.:=s�$�.:�]tһ��G�<
�k�0���N#9��N������:�Mh4���Ȁ$���N����A�ט~dX���G&�x6�:�M��d�Eg�Eg�Ed�&L��L��L��L�d�.�:�	A�Q�Hr�!�Jrd�8���t��HV_�P0�[�SP(�\��) "9���B��ds�0&\m�]�B�jg�"�p�&�.��^v�I�E'��Nzi���0=w�I�E'��Nz�Q�H{\�@ҧAD�G��� }          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/usuario_defecto.png-54cfbf5499d8410b619c0cde93aaeccc.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://general/usuario_defecto.png"
dest_files=[ "res://.import/usuario_defecto.png-54cfbf5499d8410b619c0cde93aaeccc.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDSC            '      ���Ӷ���   �����������������������ٶ���   �������Ӷ���   �����������Ӷ���   ���������������ٶ���   1   res://perfiles/iniciar_sesion/iniciar_sesion.tscn      :   res://configuracion/ver_cartas_admin/ver_cartas_admin.tscn                                                      	      
   %      3YYYY0�  PQV�  �  PQT�  PQYYY0�  PQV�  �  PQT�  P�  QY`      [gd_scene load_steps=6 format=2]

[ext_resource path="res://general/fuentes/menu_carta_font.tres" type="DynamicFont" id=1]
[ext_resource path="res://general/fuentes/ARLRDBD.TTF" type="DynamicFontData" id=2]
[ext_resource path="res://menu_principal/menu_principal.gd" type="Script" id=3]

[sub_resource type="DynamicFont" id=1]
size = 44
font_data = ExtResource( 2 )

[sub_resource type="DynamicFont" id=2]
size = 40
font_data = ExtResource( 2 )

[node name="menu_principal" type="Node"]
script = ExtResource( 3 )

[node name="fondo" type="ColorRect" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0

[node name="titulo" type="Label" parent="."]
anchor_left = 0.5
anchor_right = 0.5
margin_left = -120.0
margin_top = 104.0
margin_right = 128.0
margin_bottom = 200.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = SubResource( 1 )
text = "Star Deck"
align = 1
valign = 1

[node name="iniciar_partida" type="Button" parent="."]
margin_left = 664.0
margin_top = 456.0
margin_right = 1268.0
margin_bottom = 509.0
custom_fonts/font = SubResource( 2 )
text = "Iniciar Partida"

[node name="admin" type="Button" parent="."]
margin_left = 72.0
margin_top = 976.0
margin_right = 456.0
margin_bottom = 1008.0
custom_fonts/font = ExtResource( 1 )
text = "admin"

[node name="menu_usuario_caja" type="VBoxContainer" parent="."]
anchor_left = 1.0
anchor_top = 1.0
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = -472.0
margin_top = -264.0
margin_right = -88.0
margin_bottom = -48.0
custom_constants/separation = 10

[node name="ver_perfil" type="Button" parent="menu_usuario_caja"]
margin_right = 384.0
margin_bottom = 32.0
custom_fonts/font = ExtResource( 1 )
text = "Ver Perfil"

[node name="ver_coleccion" type="Button" parent="menu_usuario_caja"]
margin_top = 42.0
margin_right = 384.0
margin_bottom = 74.0
custom_fonts/font = ExtResource( 1 )
text = "Ver Colección"

[node name="ver_clasificacion" type="Button" parent="menu_usuario_caja"]
margin_top = 84.0
margin_right = 384.0
margin_bottom = 116.0
custom_fonts/font = ExtResource( 1 )
text = "Ver Clasificación"

[node name="tienda" type="Button" parent="menu_usuario_caja"]
margin_top = 126.0
margin_right = 384.0
margin_bottom = 158.0
custom_fonts/font = ExtResource( 1 )
text = "Tienda"

[node name="cerrar_sesion" type="Button" parent="menu_usuario_caja"]
margin_top = 168.0
margin_right = 384.0
margin_bottom = 200.0
custom_fonts/font = ExtResource( 1 )
text = "Cerrar Sesión"

[connection signal="pressed" from="admin" to="." method="Admin_presionado"]
[connection signal="pressed" from="menu_usuario_caja/cerrar_sesion" to="." method="Cerrar_sesion_presionado"]
             GDSC   M   %   r   �     ���Ӷ���   ����������������ٶ��   ����������¶   ������������������¶   ������Ӷ   �����϶�   ����   ��������Ҷ��   ������¶   ��������������������������׶   ��������ٶ��   ���������������׶���   ����������Ŷ   �����ٶ�   ���������ض�   ��������   ����Ӷ��   ������������������Ў����   �������������ڶ�   �Ҷ�   �����¶�   �������Ӷ���   �����������Ӷ���   �������¶���   ����������������¶��   ������Ӷ   ���¶���   ������������������ٶ   �������������������ٶ���   �����������������׶�   ������������ٶ��   �������������ٶ�   ����Ӷ��   �������׶���   ����������Ӏ����   ��������Ŷ��   ����������Ӏ����   �����������������Ķ�   ���ö���   ����������׶   �������������׶�   ����������׶   �������������׶�   ���������׶�   ������������׶��   ���Ŷ���   ��������׶��   ���������ض�   ������������¶��   �������������ζ�   ��������������Ҷ   ��������������׶   �����������������׶�   �����������������ض�   ������Ŷ   ��ڶ   ������¶   ���������¶�   �����������   ����������������׶��   �����������Ķ���   ����������������׶��   �����������Ķ���   ���������������׶���   ����������Ķ   ��������������������׶��   ���������������Ķ���    ������������������������������׶   �������������������������Ķ�   ������������׶��   �����޶�   ���������������ζ���   ����ζ��   ������Ӷ   �����޶�   ������������������������׶��    ���������������������������׶���   !   res://general/usuario_defecto.png         request_completed         Http_post_usuario_respuesta    �      �         id     A   res://perfiles/crear_cuenta_usuario/seleccion_cartas_inicial.tscn             I   Se produjo un error al intentar registrar el usuario. Intente nuevamente.      1   res://perfiles/iniciar_sesion/iniciar_sesion.tscn                      Guardando...      correo        nombre        alias         nacionalidad      password      activo        avatar        puntos               monedero            User-Agent: StarDeckClient        Content-Type: application/json     <   https://stardeckapi20230421233814.azurewebsites.net/Usuarios         ,   El nombre debe tener entre 1 y 30 caracteres   2      ,   El correo debe tener entre 1 y 50 caracteres   +   El alias debe tener entre 1 y 30 caracteres       ^[A-Za-z0-9]*$           )   La contraseña debe contener 8 caracteres      6   La contraseña se debe componer de números y/o letras        Las contraseñas no coinciden                                  
                     	      
         %      *      5      6      7      8      9      F      P      ^      _      j      k      t      u      x      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4      5     6     7   #  8   1  9   ;  :   P  ;   ^  <   e  =   l  >   s  ?   z  @   {  A   |  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S     T     U     V     W   .  X   >  Y   I  Z   M  [   N  \   ^  ]   n  ^   y  _   }  `   ~  a   �  b   �  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   3YYYY;�  V�  Y:�  V�  ?PQYYY0�  PQV�  �  �  �  T�  PQ�  �  P�  Q�  �  T�  P�  RR�  QYYYYY0�	  P�
  R�  R�  R�  QV�  &�  �  �  �  V�  ;�  �  T�  P�  T�  PQQ�  �  �  T�  �  T�  L�  M�  �  �  PQT�  P�  Q�  �  (V�  �  PQT�  PQT�  P�  Q�  W�  T�  �  YYYY0�  PQV�  �  PQT�  P�	  QYYYY0�  PQV�  �  PQT�  PQT�  P�
  Q�  W�  T�  �  �  �  �  &�  PQV�  �  PQT�  PQT�  P�  Q�  .�  �  W�  T�  �  �  �  �  ;�  V�  NO�  ;�  V�   �  T�!  PQ�  ;�"  V�  �#  T�$  P�  T�%  PQQ�  �  �  L�  M�  �  �  L�  MW�&  �'  �(  T�  �  �  L�  MW�&  �)  �*  T�  �  �  L�  MW�&  �+  �,  T�  �  ;�-  W�&  �.  �/  �  �  L�  M�-  T�0  P�-  T�1  P�-  T�2  PQQQ�  �  L�  MW�&  �3  �4  T�  �  �  L�  M�
  �  �  L�  M�"  �  �  L�  M�  �  �  L�  M�  �  �  �  ;�5  �  T�?  P�  Q�  ;�6  V�  L�  R�  M�  ;�7  �  �  �  T�8  P�7  R�6  R�
  R�9  T�:  R�5  QYYYY0�  PQV�  W�&  �;  �<  T�  �  �  W�&  �=  �>  T�  �  �  W�&  �?  �@  T�  �  �  W�&  �A  �B  T�  �  �  W�&  �C  �D  T�  �  �  �  ;�E  �  �  �  &W�&  �)  �*  T�  T�F  PQ�  W�&  �)  �*  T�  T�F  PQ�  V�  W�&  �;  �<  T�  �  �  �E  �
  �  �  &W�&  �'  �(  T�  T�F  PQ�  W�&  �'  �(  T�  T�F  PQ�  V�  W�&  �=  �>  T�  �  �  �E  �
  �  �  &W�&  �+  �,  T�  T�F  PQ�  W�&  �+  �,  T�  T�F  PQ�  V�  W�&  �?  �@  T�  �  �  �E  �
  �  �  ;�G  �H  T�  PQ�  �G  T�I  P�   Q�  �  &W�&  �3  �4  T�  T�F  PQ�!  V�  W�&  �A  �B  T�  �"  �  �E  �
  �  '�G  T�J  PW�&  �3  �4  T�  QV�  W�&  �A  �B  T�  �#  �  �E  �
  �  �  &W�&  �K  �L  T�  W�&  �3  �4  T�  V�  W�&  �C  �D  T�  �$  �  �E  �
  �  �  .�E  Y`      [gd_scene load_steps=14 format=2]

[ext_resource path="res://general/fuentes/menu_carta_font.tres" type="DynamicFont" id=1]
[ext_resource path="res://general/fuentes/ARLRDBD.TTF" type="DynamicFontData" id=2]
[ext_resource path="res://perfiles/crear_cuenta_usuario/crear_cuenta_usuario.gd" type="Script" id=3]

[sub_resource type="DynamicFont" id=11]
size = 44
font_data = ExtResource( 2 )

[sub_resource type="StyleBoxFlat" id=12]
bg_color = Color( 0.85098, 0.85098, 0.85098, 1 )

[sub_resource type="StyleBoxFlat" id=13]
bg_color = Color( 0.862745, 0.862745, 0.862745, 1 )

[sub_resource type="StyleBoxFlat" id=19]
bg_color = Color( 0.85098, 0.85098, 0.85098, 1 )

[sub_resource type="StyleBoxFlat" id=20]
bg_color = Color( 0.862745, 0.862745, 0.862745, 1 )

[sub_resource type="StyleBoxFlat" id=21]
bg_color = Color( 0.85098, 0.85098, 0.85098, 1 )

[sub_resource type="StyleBoxFlat" id=22]

[sub_resource type="Theme" id=14]
PopupMenu/colors/font_color = Color( 0, 0, 0, 1 )
PopupMenu/colors/font_color_accel = Color( 0.7, 0.7, 0.7, 0.8 )
PopupMenu/colors/font_color_disabled = Color( 0.4, 0.4, 0.4, 0.8 )
PopupMenu/colors/font_color_hover = Color( 0, 0, 0, 1 )
PopupMenu/colors/font_color_separator = Color( 0.88, 0.88, 0.88, 1 )
PopupMenu/fonts/font = ExtResource( 1 )
PopupMenu/styles/hover = SubResource( 21 )
PopupMenu/styles/panel = SubResource( 22 )

[sub_resource type="StyleBoxFlat" id=15]

[sub_resource type="StyleBoxFlat" id=16]

[node name="crear_cuenta_usuario" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 3 )

[node name="fondo" type="ColorRect" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0

[node name="titulo" type="Label" parent="."]
anchor_left = 0.5
anchor_right = 0.5
margin_left = -120.0
margin_top = 104.0
margin_right = 128.0
margin_bottom = 200.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = SubResource( 11 )
text = "Registro"
align = 1
valign = 1

[node name="menu" type="VBoxContainer" parent="."]
anchor_left = 0.5
anchor_right = 0.5
anchor_bottom = 1.0
margin_left = -296.0
margin_top = 312.0
margin_right = 308.0
margin_bottom = -280.0
custom_constants/separation = 10

[node name="nombre_caja" type="HBoxContainer" parent="menu"]
margin_right = 604.0
margin_bottom = 26.0

[node name="nombre" type="Label" parent="menu/nombre_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
text = "Nombre"
autowrap = true

[node name="nombre_entrada" type="LineEdit" parent="menu/nombre_caja"]
margin_left = 204.0
margin_right = 604.0
margin_bottom = 26.0
rect_min_size = Vector2( 400, 0 )
custom_colors/cursor_color = Color( 0, 0, 0, 1 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
custom_styles/focus = SubResource( 12 )
custom_styles/normal = SubResource( 13 )
placeholder_text = "Ingrese su nombre"
placeholder_alpha = 0.4
caret_blink = true
caret_blink_speed = 0.5

[node name="nombre_error_caja" type="HBoxContainer" parent="menu"]
margin_top = 36.0
margin_right = 604.0
margin_bottom = 62.0

[node name="vacio" type="Label" parent="menu/nombre_error_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
autowrap = true

[node name="nombre_error" type="Label" parent="menu/nombre_error_caja"]
margin_left = 204.0
margin_right = 204.0
margin_bottom = 26.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )

[node name="correo_caja" type="HBoxContainer" parent="menu"]
margin_top = 72.0
margin_right = 604.0
margin_bottom = 98.0

[node name="correo" type="Label" parent="menu/correo_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
text = "Correo"
autowrap = true

[node name="correo_entrada" type="LineEdit" parent="menu/correo_caja"]
margin_left = 204.0
margin_right = 604.0
margin_bottom = 26.0
rect_min_size = Vector2( 400, 0 )
custom_colors/cursor_color = Color( 0, 0, 0, 1 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
custom_styles/focus = SubResource( 19 )
custom_styles/normal = SubResource( 20 )
placeholder_text = "Ingrese su correo"
placeholder_alpha = 0.4
caret_blink = true
caret_blink_speed = 0.5

[node name="correo_error_caja" type="HBoxContainer" parent="menu"]
margin_top = 108.0
margin_right = 604.0
margin_bottom = 134.0
rect_min_size = Vector2( 400, 0 )

[node name="vacio" type="Label" parent="menu/correo_error_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
autowrap = true

[node name="correo_error" type="Label" parent="menu/correo_error_caja"]
margin_left = 204.0
margin_right = 204.0
margin_bottom = 26.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )

[node name="alias_caja" type="HBoxContainer" parent="menu"]
margin_top = 144.0
margin_right = 604.0
margin_bottom = 170.0

[node name="alias" type="Label" parent="menu/alias_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
text = "Alias"
autowrap = true

[node name="alias_entrada" type="LineEdit" parent="menu/alias_caja"]
margin_left = 204.0
margin_right = 604.0
margin_bottom = 26.0
rect_min_size = Vector2( 400, 0 )
custom_colors/cursor_color = Color( 0, 0, 0, 1 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
custom_styles/focus = SubResource( 12 )
custom_styles/normal = SubResource( 13 )
placeholder_text = "Ingrese su alias"
placeholder_alpha = 0.4
caret_blink = true
caret_blink_speed = 0.5

[node name="alias_error_caja" type="HBoxContainer" parent="menu"]
margin_top = 180.0
margin_right = 604.0
margin_bottom = 206.0
rect_min_size = Vector2( 400, 0 )

[node name="vacio" type="Label" parent="menu/alias_error_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
autowrap = true

[node name="alias_error" type="Label" parent="menu/alias_error_caja"]
margin_left = 204.0
margin_right = 204.0
margin_bottom = 26.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )

[node name="pais_caja" type="HBoxContainer" parent="menu"]
margin_top = 216.0
margin_right = 604.0
margin_bottom = 242.0

[node name="pais" type="Label" parent="menu/pais_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
text = "País"
autowrap = true

[node name="pais_boton" type="OptionButton" parent="menu/pais_caja"]
margin_left = 204.0
margin_right = 404.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
theme = SubResource( 14 )
custom_colors/font_color_focus = Color( 0, 0, 0, 1 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
custom_styles/disabled = SubResource( 15 )
custom_styles/normal = SubResource( 16 )
text = "Costa Rica"
items = [ "Costa Rica", null, false, 0, null, "México", null, false, 1, null, "Estados Unidos", null, false, 2, null ]
selected = 0

[node name="contrasena_caja" type="HBoxContainer" parent="menu"]
margin_top = 252.0
margin_right = 604.0
margin_bottom = 278.0

[node name="contrasena" type="Label" parent="menu/contrasena_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
text = "Contraseña"
autowrap = true

[node name="contrasena_entrada" type="LineEdit" parent="menu/contrasena_caja"]
margin_left = 204.0
margin_right = 604.0
margin_bottom = 26.0
rect_min_size = Vector2( 400, 0 )
custom_colors/cursor_color = Color( 0, 0, 0, 1 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
custom_styles/focus = SubResource( 12 )
custom_styles/normal = SubResource( 13 )
secret = true
placeholder_text = "Ingrese su contraseña"
placeholder_alpha = 0.4
caret_blink = true
caret_blink_speed = 0.5

[node name="contrasena_error_caja" type="HBoxContainer" parent="menu"]
margin_top = 288.0
margin_right = 604.0
margin_bottom = 314.0
rect_min_size = Vector2( 400, 0 )

[node name="vacio" type="Label" parent="menu/contrasena_error_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
autowrap = true

[node name="contrasena_error" type="Label" parent="menu/contrasena_error_caja"]
margin_left = 204.0
margin_right = 204.0
margin_bottom = 26.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )

[node name="confirmar_contrasena_caja" type="HBoxContainer" parent="menu"]
margin_top = 324.0
margin_right = 604.0
margin_bottom = 379.0

[node name="confirmar_contrasena" type="Label" parent="menu/confirmar_contrasena_caja"]
margin_right = 200.0
margin_bottom = 55.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
text = "Confirmar
Contraseña"
autowrap = true

[node name="confirmar_contrasena_entrada" type="LineEdit" parent="menu/confirmar_contrasena_caja"]
margin_left = 204.0
margin_right = 604.0
margin_bottom = 55.0
rect_min_size = Vector2( 400, 0 )
custom_colors/cursor_color = Color( 0, 0, 0, 1 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
custom_styles/focus = SubResource( 12 )
custom_styles/normal = SubResource( 13 )
secret = true
placeholder_text = "Ingrese nuevamente su contraseña"
placeholder_alpha = 0.4
caret_blink = true
caret_blink_speed = 0.5

[node name="confirmar_contrasena_error_caja" type="HBoxContainer" parent="menu"]
margin_top = 389.0
margin_right = 604.0
margin_bottom = 415.0
rect_min_size = Vector2( 400, 0 )

[node name="vacio" type="Label" parent="menu/confirmar_contrasena_error_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
autowrap = true

[node name="confirmar_contrasena_error" type="Label" parent="menu/confirmar_contrasena_error_caja"]
margin_left = 204.0
margin_right = 204.0
margin_bottom = 26.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )

[node name="registrar" type="Button" parent="."]
anchor_left = 0.5
anchor_top = 1.0
anchor_right = 0.5
anchor_bottom = 1.0
margin_left = -160.0
margin_top = -160.0
margin_right = -20.0
margin_bottom = -128.0
custom_fonts/font = ExtResource( 1 )
text = "Registrarse"

[node name="cancelar" type="Button" parent="."]
anchor_left = 0.5
anchor_top = 1.0
anchor_right = 0.5
anchor_bottom = 1.0
margin_left = 16.0
margin_top = -160.0
margin_right = 125.0
margin_bottom = -128.0
custom_fonts/font = ExtResource( 1 )
text = "Cancelar"

[node name="mensaje" type="Label" parent="."]
anchor_left = 0.5
anchor_top = 1.0
anchor_right = 0.5
anchor_bottom = 1.0
margin_left = -480.0
margin_top = -104.0
margin_right = 480.0
margin_bottom = -56.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
align = 1

[connection signal="pressed" from="registrar" to="." method="Registrar_presionado"]
[connection signal="pressed" from="cancelar" to="." method="Cancelar_presionado"]
       GDSC   M   &   �   ]     ���Ӷ���   ����������׶   �����������������׶�   �����Ŷ�   ������������������ض   ������������������������ض��   ����������¶    ���������������������������׶���   �����϶�   ����   ��������Ҷ��   ������¶   ��ڶ   �������������ڶ�   �Ҷ�   ������¶   �������Ӷ���   �������¶���   ����������������¶��   ����Ķ��   ���Ӷ���   ���������Ķ�$   ����������������������������������׶   ��������ٶ��   ���������������׶���   ����������Ŷ   �����ٶ�   ������Ӷ   ���¶���   ����������������׶��   �����������ض��   �������Ҷ���   �����������ض��   �����������ض��   ���������ض�   ��������   ����Ӷ��   ������������������Ў����   �����¶�   ߶��   ����׶��   ����������������׶��   �������Ӷ���   ���������������Ķ���   ������ڶ   �������������������   ������������׶��   �����������Ӷ���   ����Ŷ��   ��������Ŷ��   ���Ӏ�����������   �����������׶���   ����Ӷ��   �������������������Ķ���   ����   ����������������Ӷ��   �������Ӷ���   ������Ӷ   ��������Ҷ��   ��������(   �������������������������������������׶�   �����������Ӷ���   �����ٶ�   �������¶���   ����ض��   �����������ض���   �����������Ҷ���   ����������������׶��   ����Ŷ��   ���������¶�   �����������   ���������������ٶ���   ����������ڶ   ����������������ٶ�   ����������������ٶ�   ���������������ٶ���   ��������������������ٶ��      res://carta/carta.tscn              request_completed      #   Http_get_cartas_seleccion_respuesta    &   Http_post_carta_seleccionada_respuesta        carta_seleccionada        Seleccionar_carta      M   https://stardeckapi20230421233814.azurewebsites.net/Usuarios/CartasIniciales/                          �                imagen        carta_caja/imagen         carta_caja/nombre         nombre        carta_caja/descripcion        descripcion    %   carta_caja/valores_caja/costo_batalla         costobatalla      carta_caja/valores_caja/energia       energia    A   Se produjo un error al solicitar las cartas. Intentar nuevamente.      �            (   res://menu_principal/menu_principal.tscn      Ronda      I   Se produjo un error al guardar la carta seleccionada. Intente nuevamente.      
   usuario_id        carta_id      id        User-Agent: StarDeckClient        Content-Type: application/json     =   https://stardeckapi20230421233814.azurewebsites.net/Coleccion         Guardando selección...          1   res://perfiles/iniciar_sesion/iniciar_sesion.tscn                                                       	      
               !      "      #      (      -      .      /      0      6      7      ?      D      O      P      X      ]      h      i      j      s       t   !   u   "   ~   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8      9     :     ;     <     =     >     ?     @   "  A   +  B   ,  C   5  D   B  E   K  F   V  G   _  H   j  I   k  J   y  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]      ^     _     `     a     b      c   '  d   +  e   ,  f   -  g   3  h   <  i   =  j   J  k   K  l   V  m   b  n   c  o   d  p   m  q   t  r   u  s   x  t     u   �  v   �  w   �  x   �  y   �  z   �  {   �  |   �  }   �  ~   �     �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �      �     �     �     �     �     �     �     �     �     �      �   &  �   /  �   0  �   1  �   7  �   D  �   K  �   T  �   [  �   3YYYYYY:�  ?PQYYB�  P�  QYY;�  V�  Y;�  �  YYY;�  V�  Y;�  V�  YYYY0�  PQV�  �  �  �  T�	  PQ�  �
  P�  Q�  �  T�  P�  RR�  Q�  �  �  �  T�	  PQ�  �
  P�  Q�  �  T�  P�  RR�  Q�  �  �  �  P�  RR�  Q�  �  �  ;�  �  �  T�  �  �  T�  P�  Q�  �  PQT�  PQT�  P�  Q�  �  �  W�  T�  PQ�  W�  T�  PQYYYYYY0�  P�  R�  R�  R�  QV�  �  PQT�  PQT�  P�	  Q�  W�  T�  �
  �  �  &�  �  V�  W�  �  T�  �	  �  W�  �   T�  �	  �  W�  �!  T�  �	  �  W�  T�  PQ�  �  ;�"  �#  T�$  P�  T�%  PQQ�  �  LM�  �  �  �"  T�&  �  �  ;�'  �  �  )�(  �  V�  �  ;�)  �  T�*  PQ�  �)  T�+  P�,  T�-  Q�  �  ;�.  �/  T�	  PQ�  ;�0  �1  T�2  P�(  L�  MQ�  ;�3  �4  T�	  PQ�  &�3  T�5  P�0  Q�6  V�  �.  T�7  P�3  R�  Q�  �)  T�8  P�  QT�9  �.  �  �  �)  T�8  P�  QT�  �(  L�  M�  �)  T�8  P�  QT�  �(  L�  M�  �)  T�8  P�  QT�  �>  P�(  L�  MQ�  �)  T�8  P�  QT�  �>  P�(  L�  MQ�  �  W�  T�:  P�'  QT�
  P�)  Q�  �'  �  �  (V�  W�  �  T�  �  �  W�  �   T�  �  �  W�  �!  T�  �  �  �  W�  T�;  PQ�  W�  T�;  PQ�  W�  T�  �  YYYYY0�<  P�  R�  R�  R�  QV�  �  PQT�  PQT�  P�	  Q�  �  &�  �  �  �  V�  �  W�  T�  PQ�  W�  T�  �
  �  �  �  �  �  �  &�  �  V�  �  PQT�=  P�  Q�  �  W�>  T�?  P�  �>  P�  QQ�  �  )�@  W�  T�A  PQV�  �@  T�B  P�@  T�:  P�  QQ�  �  �  ;�  �  �  T�  �  �  T�  P�  Q�  �  (V�  W�  T�;  PQ�  W�  T�  �  YYY0�C  P�  QV�  �  PQT�  PQT�  P�  Q�  �  ;�D  V�  NO�  �  �D  L�  M�  T�  �  �D  L�  M�  L�  ML�  M�  �  ;�"  �#  T�?  P�D  Q�  ;�  V�  L�   R�!  M�  ;�  �"  �  �  T�  P�  R�  R�  R�E  T�F  R�"  Q�  W�  T�  �#  YYYYY0�G  PQV�  �H  P�  R�  QYY0�I  PQV�  �H  P�  R�  QYY0�J  PQV�  �H  P�  R�$  QYYYYY0�K  PQV�  �  PQT�=  P�%  QYYY0�L  PQV�  �  PQT�  PQT�  P�  Q�  W�  T�  PQ�  ;�  �  �  T�  �  �  T�  P�  QY`       [gd_scene load_steps=10 format=2]

[ext_resource path="res://general/fuentes/ARLRDBD.TTF" type="DynamicFontData" id=1]
[ext_resource path="res://general/fuentes/menu_carta_font.tres" type="DynamicFont" id=2]
[ext_resource path="res://perfiles/crear_cuenta_usuario/seleccion_cartas_inicial.gd" type="Script" id=3]

[sub_resource type="DynamicFont" id=1]
size = 44
font_data = ExtResource( 1 )

[sub_resource type="StyleBoxEmpty" id=2]

[sub_resource type="StyleBoxEmpty" id=3]

[sub_resource type="StyleBoxEmpty" id=4]

[sub_resource type="StyleBoxEmpty" id=5]

[sub_resource type="StyleBoxEmpty" id=6]

[node name="seleccion_cartas_inicial" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 3 )

[node name="fondo" type="ColorRect" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0

[node name="titulo" type="Label" parent="."]
anchor_left = 0.5
anchor_right = 0.5
margin_left = -120.0
margin_top = 104.0
margin_right = 128.0
margin_bottom = 200.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = SubResource( 1 )
text = "Ronda 1"
align = 1
valign = 1

[node name="menu_usuario_caja" type="HBoxContainer" parent="."]
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_top = -276.0
margin_bottom = 276.0
custom_constants/separation = 40
alignment = 1

[node name="carta_1_boton" type="Button" parent="menu_usuario_caja"]
margin_left = 440.0
margin_right = 760.0
margin_bottom = 552.0
rect_min_size = Vector2( 320, 0 )
custom_styles/hover = SubResource( 2 )
custom_styles/pressed = SubResource( 3 )
custom_styles/focus = SubResource( 4 )
custom_styles/disabled = SubResource( 5 )
custom_styles/normal = SubResource( 6 )

[node name="carta_2_boton" type="Button" parent="menu_usuario_caja"]
margin_left = 800.0
margin_right = 1120.0
margin_bottom = 552.0
rect_min_size = Vector2( 320, 0 )
custom_styles/hover = SubResource( 2 )
custom_styles/pressed = SubResource( 3 )
custom_styles/focus = SubResource( 4 )
custom_styles/disabled = SubResource( 5 )
custom_styles/normal = SubResource( 6 )

[node name="carta_3_boton" type="Button" parent="menu_usuario_caja"]
margin_left = 1160.0
margin_right = 1480.0
margin_bottom = 552.0
rect_min_size = Vector2( 320, 0 )
custom_styles/hover = SubResource( 2 )
custom_styles/pressed = SubResource( 3 )
custom_styles/focus = SubResource( 4 )
custom_styles/disabled = SubResource( 5 )
custom_styles/normal = SubResource( 6 )

[node name="mensaje" type="Label" parent="."]
anchor_left = 0.5
anchor_top = 1.0
anchor_right = 0.5
anchor_bottom = 1.0
margin_left = -480.0
margin_top = -104.0
margin_right = 480.0
margin_bottom = -56.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 2 )
align = 1

[node name="salir" type="Button" parent="."]
anchor_left = 1.0
anchor_top = 1.0
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = -264.0
margin_top = -136.0
margin_right = -109.0
margin_bottom = -104.0
custom_fonts/font = ExtResource( 2 )
text = "Salir"

[node name="reintentar" type="Button" parent="."]
anchor_left = 1.0
anchor_top = 1.0
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = -264.0
margin_top = -184.0
margin_right = -109.0
margin_bottom = -152.0
custom_fonts/font = ExtResource( 2 )
text = "Reintentar"

[connection signal="pressed" from="menu_usuario_caja/carta_1_boton" to="." method="Carta_presionado"]
[connection signal="pressed" from="menu_usuario_caja/carta_2_boton" to="." method="Carta_2_presionado"]
[connection signal="pressed" from="menu_usuario_caja/carta_3_boton" to="." method="Carta_3_presionado"]
[connection signal="pressed" from="salir" to="." method="Salir_presionado"]
[connection signal="pressed" from="reintentar" to="." method="Reintentar_presionado"]
               GDSC            )      ���Ӷ���   �������������������������ٶ�   �������Ӷ���   �����������Ӷ���   ������������������������ٶ��   =   res://perfiles/crear_cuenta_usuario/crear_cuenta_usuario.tscn      (   res://menu_principal/menu_principal.tscn                                                    	      
               '      3YYYYY0�  PQV�  �  PQT�  PQYYYY0�  PQV�  �  PQT�  P�  QY`    [gd_scene load_steps=9 format=2]

[ext_resource path="res://general/fuentes/menu_carta_font.tres" type="DynamicFont" id=1]
[ext_resource path="res://general/fuentes/ARLRDBD.TTF" type="DynamicFontData" id=2]
[ext_resource path="res://perfiles/iniciar_sesion/iniciar_sesion.gd" type="Script" id=3]

[sub_resource type="DynamicFont" id=11]
size = 44
font_data = ExtResource( 2 )

[sub_resource type="StyleBoxFlat" id=12]
bg_color = Color( 0.85098, 0.85098, 0.85098, 1 )

[sub_resource type="StyleBoxFlat" id=13]
bg_color = Color( 0.862745, 0.862745, 0.862745, 1 )

[sub_resource type="StyleBoxFlat" id=14]
bg_color = Color( 0.85098, 0.85098, 0.85098, 1 )

[sub_resource type="StyleBoxFlat" id=15]
bg_color = Color( 0.862745, 0.862745, 0.862745, 1 )

[node name="iniciar_sesion" type="Node"]
script = ExtResource( 3 )

[node name="fondo" type="ColorRect" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0

[node name="titulo" type="Label" parent="."]
anchor_left = 0.5
anchor_right = 0.5
margin_left = -120.0
margin_top = 48.0
margin_right = 128.0
margin_bottom = 144.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = SubResource( 11 )
text = "Star Deck"
align = 1
valign = 1

[node name="menu" type="VBoxContainer" parent="."]
anchor_left = 0.5
anchor_right = 0.5
anchor_bottom = 1.0
margin_left = -296.0
margin_top = 408.0
margin_right = 308.0
margin_bottom = -376.0
custom_constants/separation = 10

[node name="correo_caja" type="HBoxContainer" parent="menu"]
margin_right = 604.0
margin_bottom = 26.0

[node name="correo" type="Label" parent="menu/correo_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
text = "Correo"
autowrap = true

[node name="correo_entrada" type="LineEdit" parent="menu/correo_caja"]
margin_left = 204.0
margin_right = 604.0
margin_bottom = 26.0
rect_min_size = Vector2( 400, 0 )
custom_colors/cursor_color = Color( 0, 0, 0, 1 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
custom_styles/focus = SubResource( 12 )
custom_styles/normal = SubResource( 13 )
placeholder_text = "Ingrese su correo"
placeholder_alpha = 0.4

[node name="correo_error_caja" type="HBoxContainer" parent="menu"]
margin_top = 36.0
margin_right = 604.0
margin_bottom = 62.0
rect_min_size = Vector2( 400, 0 )

[node name="vacio" type="Label" parent="menu/correo_error_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
autowrap = true

[node name="correo_error" type="Label" parent="menu/correo_error_caja"]
margin_left = 204.0
margin_right = 204.0
margin_bottom = 26.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )

[node name="contrasena_caja" type="HBoxContainer" parent="menu"]
margin_top = 72.0
margin_right = 604.0
margin_bottom = 98.0

[node name="contrasena" type="Label" parent="menu/contrasena_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
text = "Contraseña"
autowrap = true

[node name="contrasena_entrada" type="LineEdit" parent="menu/contrasena_caja"]
margin_left = 204.0
margin_right = 604.0
margin_bottom = 26.0
rect_min_size = Vector2( 400, 0 )
custom_colors/cursor_color = Color( 0, 0, 0, 1 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
custom_styles/focus = SubResource( 14 )
custom_styles/normal = SubResource( 15 )
secret = true
placeholder_text = "Ingrese su contraseña"
placeholder_alpha = 0.4

[node name="contrasena_error_caja" type="HBoxContainer" parent="menu"]
margin_top = 108.0
margin_right = 604.0
margin_bottom = 134.0
rect_min_size = Vector2( 400, 0 )

[node name="vacio" type="Label" parent="menu/contrasena_error_caja"]
margin_right = 200.0
margin_bottom = 26.0
rect_min_size = Vector2( 200, 0 )
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )
autowrap = true

[node name="contrasena_error" type="Label" parent="menu/contrasena_error_caja"]
margin_left = 204.0
margin_right = 204.0
margin_bottom = 26.0
custom_colors/font_color = Color( 0, 0, 0, 1 )
custom_fonts/font = ExtResource( 1 )

[node name="iniciar_sesion_boton" type="Button" parent="."]
anchor_left = 0.5
anchor_top = 1.0
anchor_right = 0.5
anchor_bottom = 1.0
margin_left = -80.0
margin_top = -472.0
margin_right = 75.0
margin_bottom = -440.0
custom_fonts/font = ExtResource( 1 )
text = "Iniciar sesión"

[node name="registrar_boton" type="Button" parent="."]
anchor_left = 0.5
anchor_top = 1.0
anchor_right = 0.5
anchor_bottom = 1.0
margin_left = -80.0
margin_top = -384.0
margin_right = 75.0
margin_bottom = -352.0
custom_fonts/font = ExtResource( 1 )
text = "Registrarse"

[connection signal="pressed" from="iniciar_sesion_boton" to="." method="Iniciar_sesion_presionado"]
[connection signal="pressed" from="registrar_boton" to="." method="Registrar_boton_presionado"]
        [remap]

path="res://addons/HTML5FileExchange/HTML5FileExchange.gdc"
           [remap]

path="res://addons/HTML5FileExchange/plugin.gdc"
      [remap]

path="res://carta/carta.gdc"
          [remap]

path="res://configuracion/crear_carta/crear_carta.gdc"
[remap]

path="res://configuracion/ver_cartas_admin/ver_cartas_admin.gdc"
      [remap]

path="res://general/global/usuario_actual.gdc"
        [remap]

path="res://menu_principal/menu_principal.gdc"
        [remap]

path="res://perfiles/crear_cuenta_usuario/crear_cuenta_usuario.gdc"
   [remap]

path="res://perfiles/crear_cuenta_usuario/seleccion_cartas_inicial.gdc"
               [remap]

path="res://perfiles/iniciar_sesion/iniciar_sesion.gdc"
               �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         StarDeckGodot      application/run/main_scene<      1   res://perfiles/iniciar_sesion/iniciar_sesion.tscn      application/config/icon         res://icon.png     autoload/HTML5File<      4   *res://addons/HTML5FileExchange/HTML5FileExchange.gd   autoload/usuario_actual0      '   *res://general/global/usuario_actual.gd    display/window/size/width      �     display/window/size/height      8     display/window/stretch/mode         2d     display/window/stretch/aspect         keep   editor_plugins/enabled8         *   res://addons/HTML5FileExchange/plugin.cfg   )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres      