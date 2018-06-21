 function TimeLineControl(){}    
              TimeLineControl.prototype = new GControl();  
              TimeLineControl.prototype.initialize = function(map){  
		      this.map = map;  
		      var container = map.getContainer();  
		      var label = document.createElement("div");  
		      container.appendChild(label);  
		      label.innerHTML = "timeline";   
		      return label;  
		}  
             TimeLineControl.prototype.getDefaultPosition = function(){  
             return new GControlPosition(G_ANCHOR_TOP_LEFT, new GSize(50, 10));  
        }  