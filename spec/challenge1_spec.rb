require 'spec_helper'
require_relative '../lib/challenge1'

describe Challenge1 do
  it '#balanced verification 1' do
    expect(Challenge1.balanced?('(a[0]+b[2c[6]]) {24 + 53}')).to eq(true)
  end

  it '#balanced verification 2' do
    expect(Challenge1.balanced?('[()]{}([])')).to eq(true)
  end

  it '#balanced verification 3' do
    expect(Challenge1.balanced?('((b)')).to eq(false)
  end

  it '#balanced verification 4' do
    expect(Challenge1.balanced?('(c]')).to eq(false)
  end

  it '#balanced verification 5' do
    expect(Challenge1.balanced?('{(a[])')).to eq(false)
  end

  it '#balanced verification 6' do
    expect(Challenge1.balanced?('([)]')).to eq(false)
  end

  it '#balanced verification 7' do
    expect(Challenge1.balanced?('')).to eq(true)
  end
end
