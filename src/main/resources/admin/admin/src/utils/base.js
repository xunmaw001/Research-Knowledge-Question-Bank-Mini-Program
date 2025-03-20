const base = {
    get() {
        return {
            url : "http://localhost:8080/springboottqt04/",
            name: "springboottqt04",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboottqt04/front/h5/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "研知识题库小程序"
        } 
    }
}
export default base
