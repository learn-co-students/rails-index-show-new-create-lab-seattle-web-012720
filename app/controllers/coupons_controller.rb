class CouponsController < ApplicationController
    def create
        # byebug
        @coupon = Coupon.new
        @coupon.store = params[:coupon][:store]
        #params = { coupon : {coupon_code : __, store : __ }}
        @coupon.coupon_code = params[:coupon][:coupon_code]
        @coupon.save
        redirect_to coupon_path(@coupon)
    end

    def new
        @coupon = Coupon.new
    end

    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end
end
