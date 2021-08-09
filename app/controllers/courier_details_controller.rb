class CourierDetailsController < ApplicationController
  before_action :set_courier_detail, only: %i[ show edit update destroy ]
  after_action :set_courier_status, only: [:create]

  # GET /courier_details or /courier_details.json
  def index
    @courier_details = CourierDetail.all
  end

  # GET /courier_details/1 or /courier_details/1.json
  def show
  end

  # GET /courier_details/new
  def new
    @courier_detail = CourierDetail.new
  end

  # GET /courier_details/1/edit
  def edit
  end

  # POST /courier_details or /courier_details.json
  def create
    @courier_detail = CourierDetail.new(courier_detail_params)

    respond_to do |format|
      if @courier_detail.save
        format.html { redirect_to @courier_detail, notice: "Courier detail was successfully created." }
        format.json { render :show, status: :created, location: @courier_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @courier_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courier_details/1 or /courier_details/1.json
  def update
    respond_to do |format|
      if @courier_detail.update(courier_detail_params)
        format.html { redirect_to @courier_detail, notice: "Courier detail was successfully updated." }
        format.json { render :show, status: :ok, location: @courier_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @courier_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courier_details/1 or /courier_details/1.json
  def destroy
    @courier_detail.destroy
    respond_to do |format|
      format.html { redirect_to courier_details_url, notice: "Courier detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def set_courier_status
    uid = rand.to_s[2..5].to_i
    id = CourierDetail.last.id
    CourierStatus.create(status_code: uid, status: "sent", courier_detail_id: id)
    #for message service we can use below code
    # require 'twilio-ruby'

    #       account_sid = 'ACxxxxxxxxxxxxxxxxxxxxxxxx'
    #       auth_token = 'yyyyyyyyyyyyyyyyyyyyyyyyy'
    #       client = Twilio::REST::Client.new(account_sid, auth_token)

    #       from = '+15551234567' # Your Twilio number
    #       to = '+15555555555' # Your mobile phone number

    #       client.messages.create(
    #       from: from,
    #       to: to,
    #       body: "Hey friend!"
          #)



  end

  def status_report
    @status = CourierStatus.find_by(status_code: params[:id])
    render :status_report
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_courier_detail
      @courier_detail = CourierDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def courier_detail_params
      params.require(:courier_detail).permit(:sender_name, :sender_address, :sender_contact, :sender_pincode, :receiver_name, :receiver_address, :receiver_contact, :receiver_pincode, :parcel_weight, :service_type, :service_cost, :payment_mode, :user_id)
    end
end
