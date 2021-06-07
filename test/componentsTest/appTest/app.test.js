import React from 'react';
// import ReactDOM from 'react-dom';
import { shallow } from 'enzyme';
import App from '../../../client/src/components/app/app.jsx';

let sum = function (a, b) {
  return a + b;
};

test('adds 1 + 2 to equal 3', () => {
  expect(sum(1, 2)).toBe(3);
});

test('checks that app component is rendering', () => {
  const wrapper = shallow(<App />, {disableLifecycleMethods: true});
  expect(wrapper.text()).toContain('Overview');
});