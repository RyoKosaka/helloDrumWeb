navigator.requestMIDIAccess().then(successCallback,faildCallback);

var midi = null;
var inputs = [];
var outputs = [];

// MIDI接続成功時
function successCallback(m){
  console.log("asd");
  midi = m;
  // 入力MIDIデバイスの記録
  var it = midi.inputs.values();
  for(var o = it.next(); !o.done; o = it.next()){
    inputs.push(o.value);
    $("#input").append("<li>"+ o.value.name +"</li>");
  }

  // 出力MIDIデバイスの記録
  var ot = midi.outputs.values();
  for(var o = ot.next(); !o.done; o = ot.next()){
    outputs.push(o.value);
    $("#output").append("<li>"+ o.value.name +"</li>");
  }

  // 入力MIDIデバイスから入力が来たときの処理の登録
  for(var cnt=0;cnt < inputs.length;cnt++){
    inputs[cnt].onmidimessage = onMIDIEvent;
  }
}

// MIDI接続失敗時
function faildCallback(msg){
  console.log("[Error]:"+msg);
}

//入力MIDIデバイスから入力が来たときの処理
function onMIDIEvent(e){
  var str = "";
  for(var i=0, out=[]; i<e.data.length; i++) {
    str = str + e.data[i].toString(16).substr(-2) + " ";
  }
  str = str;
  $("#data").text(str);
}
