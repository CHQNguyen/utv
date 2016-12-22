const slickerStyle = {
  width: "20em"
};

const Card = (props) => {
  return (
    <div className="category-container">
      <div className="category-image">
        <img className="center-block"
          onClick={props.onClick}
          id={props.id}
          style={slickerStyle}
          src={props.image}/>
      </div>
      <h4 className="category_title center">
        {props.children}
      </h4>
    </div>
  )
}

class SimpleSlider extends React.Component {

  constructor(props) {
    super(props);
    this.state={
      isGrid: false
    }
    this.toggle = this.toggle.bind(this);
  }

  toggle() {
    this.setState({isGrid: !this.state.isGrid})
  }

  render() {
    // Variable Width
    var settings = {
      infinite: true,
      slidesToShow: 3,

      variableWidth: true
    };
    var Button = ReactBootstrap.Button;
    if (this.state.isGrid) {
      return (
        <div className="grid-container">
          <div className="display-button">
            <Button bsStyle="info" onClick={this.toggle}>Slider</Button>
          </div>
          <div className="categories-container">
              <div className="blah">
                <Card onClick={this.props.handleClick} id="1" image="comedy.png">Comedy Network</Card>
                <div className="category-container"><div className="category-image"><img className="center-block" onClick={this.props.handleClick} id="2" style={slickerStyle} src="education.png"/></div><h4 className="category_title center">Educational & Informative</h4></div>
                <div className="category-container"><div className="category-image"><img className="center-block" onClick={this.props.handleClick} id="3" style={slickerStyle} src="kids.png"/></div><h4 className="category_title center">Kids Discovery</h4></div>
              </div>
              <div className="blah">
                <div className="category-container"><div className="category-image"><img className="center-block" onClick={this.props.handleClick} id="4" style={slickerStyle} src="cook.png"/></div><h4 className="category_title center">Cooking</h4></div>
                <div className="category-container"><div className="category-image"><img className="center-block" onClick={this.props.handleClick} id="5" style={slickerStyle} src="entertain.png"/></div><h4 className="category_title center">Enterainment</h4></div>
                <div className="category-container"><div className="category-image"><img className="center-block" onClick={this.props.handleClick} id="6" style={slickerStyle} src="game.png"/></div><h4 className="category_title center">Gamer</h4></div>
              </div>

              <div className="blah2">
                <div className="category-container"><div className="category-image"><img className="center-block" onClick={this.props.handleFavoritesClick} id="7" style={slickerStyle} src="favorite.png"/></div><h4 className="category_title center">Favorites</h4></div>
                <div className="category-container"><div className="category-image"><img className="center-block" onClick={this.props.handleYoutvClick} id="8" style={slickerStyle} src="youtv.png"/></div><h4 className="category_title center">Your Channel</h4></div>
              </div>
          </div>
        </div>
      );
    } else {
      return (
        <div className="grid">
          <div className="display-button">
            <Button bsStyle="info" onClick={this.toggle}>Grid</Button>
          </div>
          <Slider className={this.state.slider} {...settings}>
            <div><img onClick={this.props.handleClick} id="1" style={slickerStyle} src="comedy.png"/><h4 className="category_title">Comedy Network</h4></div>
            <div><img onClick={this.props.handleClick} id="2" style={slickerStyle} src="education.png"/><h4 className="category_title">Educational & Informative</h4></div>
            <div><img onClick={this.props.handleClick} id="3" style={slickerStyle} src="kids.png"/><h4 className="category_title">Kids Discovery</h4></div>
            <div><img onClick={this.props.handleClick} id="4" style={slickerStyle} src="cook.png"/><h4 className="category_title">Cooking</h4></div>
            <div><img onClick={this.props.handleClick} id="5" style={slickerStyle} src="entertain.png"/><h4 className="category_title">Enterainment</h4></div>
            <div><img onClick={this.props.handleClick} id="6" style={slickerStyle} src="game.png"/><h4 className="category_title">Gamer</h4></div>
            <div><img onClick={this.props.handleFavoritesClick} id="7" style={slickerStyle} src="favorite.png"/><h4 className="category_title">Favorites</h4></div>
            <div><img onClick={this.props.handleYoutvClick} id="8" style={slickerStyle} src="youtv.png"/><h4 className="category_title">Your Channel</h4></div>
          </Slider>
        </div>
      );
    }
  }
};
