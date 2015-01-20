describe Faxomat::Client::Fax do
  let(:fax) { Faxomat::Client::Fax.new(phone: '0123456789', title: 'chunky bacon', path: 'chunky.pdf') }

  describe '#deliver' do
    it 'faxes via HTTP' do
      file = double('file')
      allow(file).to receive(:close)
      allow(fax).to receive(:file).and_return(file)
      url = 'http://faxomat/faxes'
      params = { phone: '0123456789',
                 title: 'chunky bacon',
                 document: file }
      allow(RestClient).to receive(:post)
      fax.deliver
      expect(RestClient).to have_received(:post).with(url, params)
    end
  end
end
