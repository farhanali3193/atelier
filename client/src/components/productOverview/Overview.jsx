import React from 'react';
import ProductInfo from './ProductInfo.jsx';
import Cart from './Cart.jsx';
import StyleSelector from './StyleSelector.jsx';
import ImageGallery from './ImageGallery.jsx';

class Overview extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      product: {},
      styles: [],
      currentStyle: {}
    }

  }

  componentDidMount() {
    this.fetchProductInfo()
      .then(this.fetchStyles.bind(this))
      .then(this.setDefaultStyle.bind(this));
  }

  fetchProductInfo() {
    return fetch(`http://localhost:3000/productInfo?productId=${this.props.productId}`)
      .then((results) => {
        return results.json();
      })
      .then((productInfo) => {
        this.setState({product: productInfo});
      })
      .catch(() => {
        console.log('error fetching product info from server');
      });
  }

  fetchStyles() {
    return fetch(`http://localhost:3000/styles?productId=${this.props.productId}`)
      .then((results) => {
        return results.json();
      })
      .then((styles) => {
        this.setState({styles: styles.results});
      })
      .catch(() => {
        console.log('error fetching styles from server')
      });
  }

  setDefaultStyle() {
    return this.state.styles.forEach(style => {
      if (style['default?']) {
        this.setState({currentStyle: style}, () => console.log('state', this.state));
      }
    });
  }

  updateStyle(e) {
    e.preventDefault();
    // console.log('click', e.target.src);
    // console.log('prevs state', this.state.currentStyle)
    this.state.styles.forEach(style => {
      if (style.photos[0].thumbnail_url === e.target.src) {
        this.setState({
          currentStyle: style
        }, () => console.log('update style state', this.state))
      }
    })
    // this.setState({
    //   currentStyle:
    // })
  }

  render() {
    return (
      <div className='overview'>
        <ImageGallery currentStyle={this.state.currentStyle}/>
        <ProductInfo product={this.state.product}/>
        <StyleSelector updateStyle={this.updateStyle.bind(this)} styles={this.state.styles}/>
        <Cart style={this.state.currentStyle}/>
      </div>
    );
  }
}

export default Overview;