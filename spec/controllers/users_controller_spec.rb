require "rails_helper"

describe UsersController do
	describe "GET #new" do
		it 'is a success' do
			get :new
			expect(response).to be_success
		end
	end

	describe 'POST #create' do
		context 'with valid credentials' do
			let(:valid_creds) {{
				user: {
					name: 'Pump Khin',
					email: 'example@example.com',
					password: 'password',
					password_confirmation: 'password'
				}
			}}

			it 'creates a new user' do
				expect {
					post :create , valid_creds
				}.to change(User, :count).by(1)
			end

			it 'redirects to the login path' do
				post :create, valid_creds
				expect(response).to redirect_to login_path
			end
		end

		context 'with invalid credentials' do
			let(:invalid_creds) {{
				user: {
					name: 'Pump Khin',
					email: 'example@example.com',
					password: 'password',
					password_confirmation: 'notthesamepassword'
				}
				}}
			it 'does not create a new user' do
				expect {
					post :create, invalid_creds
				}.to_not change(User, :count)
			end

			it 'renders the new path' do
				post :create, invalid_creds
				expect(response).to redirect_to signup_path
			end
		end
	end
end