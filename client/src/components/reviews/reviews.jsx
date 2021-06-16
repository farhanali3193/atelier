import React from 'react';
import RatingBreakdown from './ratingBreakdown.jsx';
import PdtBreakdown from './pdtBreakdown.jsx';
import ReviewsList from './reviewsList.jsx';
import Search from './search.jsx';
import AddReview from './addReview.jsx';
import MoreReviews from './moreReviews.jsx';
import Sort from './sort.jsx';
import WithTracking from '../hoc/withTracking.jsx';

class Reviews extends React.Component {
  constructor (props) {
    super(props);
  }

  render () {
    return (
      <div className='reviews' id='reviews' onClick={(e) => this.props.onWrappedComponentClick(e)}>
        <h2>RATINGS & REVIEWS</h2>
        <div className='reviews-body'>
          <div className='reviews-breakdown'>
            <RatingBreakdown totalReviews={this.props.totalReviews} noOfReviews={this.props.noOfReviews} avgRating={this.props.avgRating} filterReviews={this.props.filterReviews} selectedFilters={this.props.selectedFilters} removeFilters={this.props.removeFilters} removedAllFilters={this.props.removedAllFilters}/>
            <PdtBreakdown characteristics={this.props.characteristics}/>
          </div>
          {
            this.props.currentReviews.length === 0 ?
              <AddReview productId={this.props.productId} productName={this.props.productName} characteristics={this.props.characteristics} />
              :
              <div className='reviews-main'>
                <Sort
                  sortReviews={this.props.sortReviews}
                  reviewCriteria={this.props.reviewCriteria}
                  noOfReviews={this.props.noOfReviews}
                />
                <Search />
                <ReviewsList
                  reviews={this.props.filteredCurrentReviews.length > 0 ? this.props.filteredCurrentReviews: this.props.currentReviews}
                  increaseReviewHelpfulnesss={this.props.increaseReviewHelpfulnesss}
                  reportReview={this.props.reportReview}
                  helpfulReviews={this.props.helpfulReviews}
                />
                <div className='reviews-btns'>
                  { this.props.filteredCurrentReviews.length > 0 ? (this.props.filteredNextReviews.length > 0 ? <MoreReviews get2Reviews={this.props.get2Reviews}/> : null) :
                    (this.props.nextReviews.length > 0 ? <MoreReviews get2Reviews={this.props.get2Reviews}/> : null)
                  }
                  <AddReview productId={this.props.productId} productName={this.props.productName} characteristics={this.props.characteristics} />
                </div>
              </div>
          }
        </div>
      </div>
    );
  }
}

const ReviewsWithTracking = WithTracking(Reviews);
export default ReviewsWithTracking;