<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<head>
<title>Feedback</title>
<link rel="icon" href="./image/imageCairo/rating.png" type="image/icon type">
<link type="text/css" rel="stylesheet" href="https://cdn02.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?v=3.3.53185&themeRevisionID=5f7ed99c2c2c7240ba580251"/>
<style type="text/css" id="form-designer-style">
  @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;600&display=swap');

  * {
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    outline: none;
    border: none;
    
    text-decoration: none;
    text-transform: capitalize;
    transition: all .2s linear;
}

.form-radio-item:not(#foo) .form-checkbox + label,
.form-checkbox-item:not(#foo) .form-checkbox + label,
.form-radio-item:not(#foo) .form-checkbox + span,
.form-checkbox-item:not(#foo) .form-checkbox + span,
.form-radio-item:not(#foo) .form-radio + label,
.form-checkbox-item:not(#foo) .form-radio + label,
.form-radio-item:not(#foo) .form-radio + span,
.form-checkbox-item:not(#foo) .form-radio + span {
  padding-left: 50px;
  
}
.form-radio-item:not(#foo) label:before,
.form-checkbox-item:not(#foo) label:before,
.form-radio-item:not(#foo) .editor-container div:before,
.form-checkbox-item:not(#foo) .editor-container div:before {
  content: '';
  position: absolute;
  display: inline-block;
  vertical-align: baseline;
  border-radius: 12px;
  top: 0;
  left: 4px;
  width: 36px;
  height: 22px;
  cursor: pointer;
  background: #dedede;

  
}

.form-radio-item:not(#foo) input:checked + label:before,
.form-checkbox-item:not(#foo) input:checked + label:before {
  background: #F5E4D7;

}
.form-radio-item:not(#foo) input:checked + label:after,
.form-checkbox-item:not(#foo) input:checked + label:after {
  left: 20px;
  background-color: #6c584c;}
html {
    background: #F5E4D7;
}
form {
    background: #F5E4D7;
}
#input_1 {
    border-color: #443;
    background-color: #F5E4D7;
    color: #443;
}


</style>
</head>
<body>
<form autocomplete="on" action="ControllerFeedback.jsp" method="post">
  <div class="form-all">
    <ul class="form-section page-section">
      <li>
        <div>
          <div>
            <h1>We appreciate your feedback!</h1>
          </div>
        </div>
      </li>
      <li class="form-line form-line-column"><label class="form-label"> Email </label>
        <div > <span><input type="email" class="form-textbox" name="email" placeholder="Email" size="310"/><label class="form-sub-label">example@example.com</label></span> </div>
      </li>

      <li class="form-line form-line-column"><label class="form-label"> Location You Visited: </label>
        <div class="form-input-wide"> <select class="form-dropdown" name="location">
            <option value="">Please Select</option>
            <option value="New Cairo">New Cairo</option>
            <option value="New York">London</option>
            <option value="Los Angeles">Los Angeles</option>
          </select> </div>
      </li>
      <li class="form-line form-line-column"><label class="form-label" > Dine In / Take Out: </label>
        <div>
          <div class="form-single-column"><span class="form-radio-item"><input type="radio" name="Dine" class="form-radio" id="input_19_0" value="Dine In" /><label for="input_19_0">Dine In</label></span><span class="form-radio-item"><input type="radio" name="Dine" class="form-radio" id="input_19_1" name="q19_dineIn" value="Take Out" /><label for="input_19_1">Take Out</label></span></div>
        </div>
      </li>
      
      <li class="form-line" data-type="control_radio" id="id_7"><label class="form-label form-label-top form-label-auto" id="label_7" aria-hidden="false"> Food Quality </label>
        <div id="cid_7" class="form-input-wide" data-layout="full">
          <div class="form-multiple-column" data-columncount="4" role="group" aria-labelledby="label_7" data-component="radio"><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_7" class="form-radio" id="input_7_0" name="foodQuality" value="Excellent" /><label id="label_input_7_0" for="input_7_0">Excellent</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_7" class="form-radio" id="input_7_1" name="foodQuality" value="Good" /><label id="label_input_7_1" for="input_7_1">Good</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_7" class="form-radio" id="input_7_2" name="foodQuality" value="Average" /><label id="label_input_7_2" for="input_7_2">Average</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_7" class="form-radio" id="input_7_3" name="foodQuality" value="Dissatisfied" /><label id="label_input_7_3" for="input_7_3">Dissatisfied</label></span></div>
        </div>
      </li>
      <li class="form-line" data-type="control_radio" id="id_25"><label class="form-label form-label-top form-label-auto" id="label_25" aria-hidden="false"> Overall Service Quality </label>
        <div id="cid_25" class="form-input-wide" data-layout="full">
          <div class="form-multiple-column" data-columncount="4" role="group" aria-labelledby="label_25" data-component="radio"><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_25" class="form-radio" id="input_25_0" name="ServiceQuality" value="Excellent" /><label id="label_input_25_0" for="input_25_0">Excellent</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_25" class="form-radio" id="input_25_1" name="OverallServiceQuality" value="Good" /><label id="label_input_25_1" for="input_25_1">Good</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_25" class="form-radio" id="input_25_2" name="OverallServiceQuality" value="Average" /><label id="label_input_25_2" for="input_25_2">Average</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_25" class="form-radio" id="input_25_3" name="OverallServiceQuality" value="Dissatisfied" /><label id="label_input_25_3" for="input_25_3">Dissatisfied</label></span></div>
        </div>
      </li>
      <li class="form-line" data-type="control_radio" id="id_26"><label class="form-label form-label-top form-label-auto" id="label_26" aria-hidden="false"> Cleanliness </label>
        <div id="cid_26" class="form-input-wide" data-layout="full">
          <div class="form-multiple-column" data-columncount="4" role="group" aria-labelledby="label_26" data-component="radio"><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_26" class="form-radio" id="input_26_0" name="Cleanliness" value="Excellent" /><label id="label_input_26_0" for="input_26_0">Excellent</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_26" class="form-radio" id="input_26_1" name="Cleanliness" value="Good" /><label id="label_input_26_1" for="input_26_1">Good</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_26" class="form-radio" id="input_26_2" name="Cleanliness" value="Average" /><label id="label_input_26_2" for="input_26_2">Average</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_26" class="form-radio" id="input_26_3" name="Cleanliness" value="Dissatisfied" /><label id="label_input_26_3" for="input_26_3">Dissatisfied</label></span></div>
        </div>
      </li>
      <li class="form-line" data-type="control_radio" id="id_27"><label class="form-label form-label-top form-label-auto" id="label_27" aria-hidden="false"> Order Accuracy </label>
        <div id="cid_27" class="form-input-wide" data-layout="full">
          <div class="form-multiple-column" data-columncount="4" role="group" aria-labelledby="label_27" data-component="radio"><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_27" class="form-radio" id="input_27_0" name="OrderAccuracy" value="Excellent" /><label id="label_input_27_0" for="input_27_0">Excellent</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_27" class="form-radio" id="input_27_1" name="OrderAccuracy" value="Good" /><label id="label_input_27_1" for="input_27_1">Good</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_27" class="form-radio" id="input_27_2" name="OrderAccuracy" value="Average" /><label id="label_input_27_2" for="input_27_2">Average</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_27" class="form-radio" id="input_27_3" name="OrderAccuracy" value="Dissatisfied" /><label id="label_input_27_3" for="input_27_3">Dissatisfied</label></span></div>
        </div>
      </li>
      <li class="form-line" data-type="control_radio" id="id_28"><label class="form-label form-label-top form-label-auto" id="label_28" aria-hidden="false"> Speed of Service </label>
        <div id="cid_28" class="form-input-wide" data-layout="full">
          <div class="form-multiple-column" data-columncount="4" role="group" aria-labelledby="label_28" data-component="radio"><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_28" class="form-radio" id="input_28_0" name="SpeedOfService" value="Excellent" /><label id="label_input_28_0" for="input_28_0">Excellent</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_28" class="form-radio" id="input_28_1" name="SpeedOfService" value="Good" /><label id="label_input_28_1" for="input_28_1">Good</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_28" class="form-radio" id="input_28_2" name="SpeedOfService" value="Average" /><label id="label_input_28_2" for="input_28_2">Average</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_28" class="form-radio" id="input_28_3" name="SpeedOfService" value="Dissatisfied" /><label id="label_input_28_3" for="input_28_3">Dissatisfied</label></span></div>
        </div>
      </li>

      <li class="form-line" data-type="control_radio" id="id_30"><label class="form-label form-label-top form-label-auto" id="label_30" aria-hidden="false"> Overall Experience </label>
        <div id="cid_30" class="form-input-wide" data-layout="full">
          <div class="form-multiple-column" data-columncount="4" role="group" aria-labelledby="label_30" data-component="radio"><span class="form-radio-item"><span class="dragger-item"></span><input type="radio"
            aria-describedby="label_30" class="form-radio" id="input_30_0" name="OverallExperience" value="Excellent" /><label id="label_input_30_0" for="input_30_0">Excellent</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_30" class="form-radio" id="input_30_1" name="OverallExperience" value="Good" /><label id="label_input_30_1" for="input_30_1">Good</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_30" class="form-radio" id="input_30_2" name="OverallExperience" value="Average" /><label id="label_input_30_2" for="input_30_2">Average</label></span><span class="form-radio-item"><span class="dragger-item"></span><input type="radio" aria-describedby="label_30" class="form-radio" id="input_30_3" name="OverallExperience" value="Dissatisfied" /><label id="label_input_30_3" for="input_30_3">Dissatisfied</label></span></div>
        </div>
      </li>
          <div data-align="auto" class="form-buttons-wrapper form-buttons-auto   jsTest-button-wrapperField"><button id="input_1" type="submit" class="form-submit-button submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">Submit</button></div>
        </div>
      </li>
    </ul>
  </div>
  

</form></body>
</html>