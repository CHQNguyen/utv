class VideoOverlay extends React.Component {

  constructor(props){
    super(props)
    this.state={
      thumbsUpClass: "fa fa-thumbs-o-up fa-5x",
      thumbsDownClass: "fa fa-thumbs-o-down fa-5x",
      heartClass: "fa fa-heart-o fa-5x"
    }

    this.deployVideo = this.deployVideo.bind(this)
    this.destroyVideo = this.destroyVideo.bind(this)
    this.thumbs_up = this.thumbs_up.bind(this)
    this.thumbs_down = this.thumbs_down.bind(this)
    this.next = this.next.bind(this)
    this.heart = this.heart.bind(this)

  }

  deployVideo() {
    this.setState({thumbsUpClass: "fa fa-thumbs-o-up fa-5x", thumbsDownClass: "fa fa-thumbs-o-down fa-5x", heartClass: "fa fa-heart-o fa-5x"})
    this.setState({videoUrl: this.props.videoUrl + "?autoplay=1"})
    jQuery('.mm-product-video-modal-container').addClass('open');
    setTimeout(function() {
      jQuery('.mm-product-video-modal').addClass('open');
    }, 250);
  }

  destroyVideo() {
    this.setState({videoUrl: this.props.videoUrl.slice(0, -11)})
    jQuery('.mm-product-video-modal').removeClass('open');
    setTimeout(function() {
      jQuery('.mm-product-video-modal-container').removeClass('open');
    }, 250);
  }

  thumbs_up(){
    $.ajax({
      url: "/video/thumbs_up",
      type: "post",
      data: {subCategoryId: this.props.subCategoryId}
    }).done(()=> {
      if(this.state.thumbsUpClass === "fa fa-thumbs-o-up fa-5x") {
        this.setState({thumbsUpClass: "fa fa-thumbs-up fa-5x"})
      }
    })
  }

    thumbs_down(){
      $.ajax({
        url: "/video/thumbs_down",
        type: "post",
        data: {subCategoryId: this.props.subCategoryId}
      }).done(()=> {
        if(this.state.thumbsDownClass === "fa fa-thumbs-o-down fa-5x") {
          this.setState({thumbsDownClass: "fa fa-thumbs-down fa-5x"})
        }
      })
    }

    next(){
      $.ajax({
      method: "get",
      url: "/video/category",
      data: {category:{category_id: this.props.categoryId}}
      }).done((response)=>{
       this.props.handleCategory(response)
       $(".mm-launch").click()
      })
    }

    heart(){
      $.ajax({
      method: "post",
      url: "/video/favorite",
      data: {youtube_id: this.props.videoUrl}
      }).done(()=>{
       if(this.state.heartClass === "fa fa-heart-o fa-5x") {
          this.setState({heartClass: "fa fa-heart fa-5x"})
        }
      })
    }


  render(){
    const buttonStyle = {
      marginTop: "25%",
      display: "none"
    }
    return(
      <div>
        <div style={{align: "center"}} className="mm-product-video-modal-container">
          <div className="dummy-flexbox-item"></div>
          <div className="video-controls">
          <div className="fakearrow"></div>

            <div className="mm-product-video-modal dropper">
              <div className="embed-responsive embed-responsive-16by9">
                <div id="video-placeholder">
                  <iframe width="480" height="270" src={'//www.youtube.com/embed/' + this.state.videoUrl} frameBorder="0" allowFullScreen></iframe>
                </div>
              </div>
            </div>
            <i onClick={this.next} className="fa fa-chevron-circle-right fa-4x" aria-hidden="true"></i>
          </div>
              <div className="mm-video-overlay" onClick={this.destroyVideo}></div>
              <div className="pref-bar">
                <i onClick={this.thumbs_down} className={this.state.thumbsDownClass} aria-hidden="true"></i>
                <i className={this.state.heartClass} onClick={this.heart} aria-hidden="true"></i>
                <i onClick={this.thumbs_up} className={this.state.thumbsUpClass} aria-hidden="true"></i>
              </div>
            </div>
            <div className="mm-launch-container container">
            <div className="col-sm-offset-3 col-sm-6">
          <button onClick={this.deployVideo} className="mm-launch" style={buttonStyle}>Video!</button>
            </div>
            </div>
      </div>
      )
  }
}
