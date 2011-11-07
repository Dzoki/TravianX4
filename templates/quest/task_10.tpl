<div id="ce" style="position: fixed;"><div class="popup3 quest"><div id="drag"></div><a onclick="qst_handle()" href="#" class="close"><img alt="close" class="" src="img/x.gif"></a><div class="questTop"></div><div class="questMiddle"><div id="popup3"><div id="qstd"><h4>Task 10: Neighbours</h4><div class="spoken">„Around you, there are many different villages. One of them is named <b>Pellucidar</b>.
<br><br>
Click on 'map' in the header menu and look for that village. The name of your neighbours' villages can be seen when hovering your mouse over any of them.”</div><div class="rew">
                <p class="ta_aw">Order:</p>
                Look for the coordinates of <b>Pellucidar</b> and enter them here.</div>
            <div class="coordinatesInput">
                <div class="xCoord">
                    <label for="xCoordInputQuest">X:</label>
                    <input onkeypress="if (event.keyCode==13) {qst_enter_coords();}" class="text coordinates x " id="xCoordInputQuest" name="x" value="" maxlength="4">
                </div>
                <div class="yCoord">
                    <label for="yCoordInputQuest">Y:</label>
                    <input onkeypress="if (event.keyCode==13) {qst_enter_coords();}" class="text coordinates y " id="yCoordInputQuest" name="y" value="" maxlength="4">
                </div>
                <div class="clear"></div>
            </div>
        <button onclick="qst_enter_coords()" class="coordinatesButton" value="Complete task" type="button"><div class="button-container"><div class="button-position"><div class="btl"><div class="btr"><div class="btc"></div></div></div><div class="bml"><div class="bmr"><div class="bmc"></div></div></div><div class="bbl"><div class="bbr"><div class="bbc"></div></div></div></div><div class="button-contents">Complete task</div></div></button><span id="qst_accpt"></span></div>
        <div class="neighbour" id="qstbg"></div></div></div><div class="questBottom"></div></div></div>