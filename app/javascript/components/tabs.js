const changeTabs = () => {
    
    let tabHeader = document.getElementsByClassName("tab-header")[0];
    let tabIndicator = document.getElementsByClassName("tab-indicator")[0];
    let tabBody = document.getElementsByClassName("tab-body")[0];

    if(tabHeader){
        let tabsPane = tabHeader.getElementsByClassName("header");
        for(let i=0; i < tabsPane.length; i++){
            tabsPane[i].addEventListener("click", function(){
                tabHeader.getElementsByClassName("active")[0].classList.remove("active");
                tabsPane[i].classList.add("active");
                tabBody.getElementsByClassName("active")[0].classList.remove("active");
                tabBody.getElementsByClassName("body")[i].classList.add("active");
                tabIndicator.style.left = `calc(calc(100% / 4) * ${i})`;
            });
        };
    };
  }
  
export { changeTabs };