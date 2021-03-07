describe 'Select2', :select2 do 

    describe('single', :single) do 
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
        end 

        it 'seleciona ator por nome' do 

            find('.select2-selection--single').click
            sleep 1
            find('.select2-results__options', text: 'Adam Sandler').click
            sleep 5
        end
        

    end

    describe('multiple', :multi) do
        before(:each) do
            visit '/apps/select2/multi.html'
        end  

        def selecione(ator)
            find('.select2-selection--multiple').click
            sleep 1
            find('.select2-search__field').set ator
            find('.select2-results__options').click
        end

        it 'seleciona atores' do 

            atores = ['Jim Carrey', 'Owen Wilson', 'Kevin James']

            atores.each do |a|
                selecione(a)
            end
        end
    end

end