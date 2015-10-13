require "rails_helper" do
	describe "GET #new" do
		it 'is a success' do
			get :new
			expect(response).to be_success
		end
	end

	describe "POST #create" do
		context 'with valid credentials' do
			it 'logs the user in'
			it 'redirects to the users profile page'
		end

		context 'with invalid credentials' do
			it 'does not log the user in'
			it 'redirects to the login path'
		end
	end

	describe "DELET #destroy" do
		it 'destroys the session'
		it 'redirects to the login path'
	end
end