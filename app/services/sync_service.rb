require 'json'
require 'ostruct'

class SyncService
  def states(method = :create, country_id = 1, states)
    unless states.nil?
      State.destroy_all
      ActiveRecord::Base.connection.reset_pk_sequence!("states")
      
      states.each do |state|
        data = state.last
      
        State.create(
          name: data.name,
          zipcode: nil,
          iso_code: nil,
          geo: data.try(:geo),
          latitude: data.try(:geo)["latitude"],
          longitude: data.try(:geo)["latitude"],
          min_latitude: data.try(:geo)["min_latitude"],
          min_longitude: data.try(:geo)["min_longitude"],
          max_latitude: data.try(:geo)["max_latitude"],
          max_longitude: data.try(:geo)["max_longitude"],
          country_code: "me",
          country_id: country_id
        )
      end
    end        
  end
  
  def subdivisions(method = :create)
    case method
    when :create
      # Create subdivision

      data = []

      data.push(state_id: 16, postcode: "81000", name: "Podgorica")
      data.push(state_id: 16, postcode: "81101", name: "Podgorica 1")
      data.push(state_id: 16, postcode: "81102", name: "Podgorica 2")
      data.push(state_id: 16, postcode: "81103", name: "Podgorica 3")
      data.push(state_id: 16, postcode: "81104", name: "Podgorica 4")
      data.push(state_id: 16, postcode: "81105", name: "Podgorica 5")
      data.push(state_id: 16, postcode: "81106", name: "Podgorica 6")
      data.push(state_id: 16, postcode: "81107", name: "Podgorica 7")
      data.push(state_id: 16, postcode: "81108", name: "Podgorica 8")
      data.push(state_id: 16, postcode: "81109", name: "Podgorica 9")
      data.push(state_id: 16, postcode: "81110", name: "Podgorica 10")
      data.push(state_id: 16, postcode: "81111", name: "Podgorica 11")
      data.push(state_id: 16, postcode: "81112", name: "Podgorica 12")
      data.push(state_id: 16, postcode: "81113", name: "Podgorica 13")
      data.push(state_id: 16, postcode: "81114", name: "Podgorica 14")
      data.push(state_id: 16, postcode: "81115", name: "Podgorica 15")
      data.push(state_id: 16, postcode: "81204", name: "Lijeva Rijeka")
      data.push(state_id: 16, postcode: "82205", name: "Ubli")
      data.push(state_id: 16, postcode: "81206", name: "Tuzi")
      data.push(state_id: 16, postcode: "81214", name: "Bioče")
      data.push(state_id: 16, postcode: "81304", name: "Golubovci")

      data.push(state_id: 9, postcode: "81210", name: "Kolašin")
      data.push(state_id: 9, postcode: "81215", name: "Manastir Morača")
      data.push(state_id: 9, postcode: "81216", name: "Dragovića Polje")
      data.push(state_id: 9, postcode: "81217", name: "Mateševo")

      data.push(state_id: 7, postcode: "81410", name: "Danilovgrad")
      data.push(state_id: 7, postcode: "81412", name: "Spuž")
      data.push(state_id: 7, postcode: "81415", name: "Slap na Zeti")
      data.push(state_id: 7, postcode: "81416", name: "Glava Zete")

      data.push(state_id: 2, postcode: "85000", name: "Bar")
      data.push(state_id: 2, postcode: "81305", name: "Virpazar")
      data.push(state_id: 2, postcode: "85306", name: "Ostros")
      data.push(state_id: 2, postcode: "85351", name: "Bar - Gat V")
      data.push(state_id: 2, postcode: "85353", name: "Čeluga")
      data.push(state_id: 2, postcode: "85354", name: "Stari Bar")
      data.push(state_id: 2, postcode: "85355", name: "Sutomore")
      data.push(state_id: 2, postcode: "85356", name: "Pečurice")
      data.push(state_id: 2, postcode: "85357", name: "Čanj")
      data.push(state_id: 2, postcode: "85358", name: "Veliki Pijesak")
      data.push(state_id: 2, postcode: "85359", name: "Uvala Maslina")

      data.push(state_id: 6, postcode: "81250", name: "Cetinje")
      data.push(state_id: 6, postcode: "81253", name: "Rijeka Crnojevića")
      data.push(state_id: 6, postcode: "81254", name: "Ljubotinj")
      data.push(state_id: 6, postcode: "81255", name: "Njeguši")
      data.push(state_id: 6, postcode: "81257", name: "Ćeklići")
      data.push(state_id: 6, postcode: "81258", name: "Čevo")
      data.push(state_id: 6, postcode: "81259", name: "Bata")
      data.push(state_id: 6, postcode: "81260", name: "Trešnjevo")

      data.push(state_id: 12, postcode: "81400", name: "Nikšić")
      data.push(state_id: 12, postcode: "81402", name: "Nikšić 2")
      data.push(state_id: 12, postcode: "81403", name: "Nikšić 3")
      data.push(state_id: 12, postcode: "81404", name: "Kočani")
      data.push(state_id: 12, postcode: "81405", name: "Kličevo")
      data.push(state_id: 12, postcode: "81417", name: "Bogetići")
      data.push(state_id: 12, postcode: "81418", name: "Miolje Polje (Župa Nikšićka)")
      data.push(state_id: 12, postcode: "81420", name: "Grahovo")
      data.push(state_id: 12, postcode: "81421", name: "Trubjela")
      data.push(state_id: 12, postcode: "81422", name: "Krstac")
      data.push(state_id: 12, postcode: "81423", name: "Vulusi")
      data.push(state_id: 12, postcode: "81425", name: "Rastovac")
      data.push(state_id: 12, postcode: "81426", name: "Vraćenovići")
      data.push(state_id: 12, postcode: "81427", name: "Donje Crkvice")
      data.push(state_id: 12, postcode: "81428", name: "Velimlje")
      data.push(state_id: 12, postcode: "81431", name: "Vidrovan")

      data.push(state_id: 15, postcode: "81435", name: "Plužine")
      data.push(state_id: 15, postcode: "81432", name: "Donja Brezna")
      data.push(state_id: 15, postcode: "81437", name: "Trsa")

      data.push(state_id: 18, postcode: "81450", name: "Šavnik")
      data.push(state_id: 18, postcode: "81453", name: "Gornja Bukovica")
      data.push(state_id: 18, postcode: "81455", name: "Boan")

      data.push(state_id: 3, postcode: "84300", name: "Berane")
      data.push(state_id: 3, postcode: "84306", name: "Lubnice")
      data.push(state_id: 3, postcode: "84312", name: "Petnjica")

      data.push(state_id: 1, postcode: "84320", name: "Andrijevica")
      data.push(state_id: 1, postcode: "84322", name: "Trepča")

      data.push(state_id: 13, postcode: "84325", name: "Plav")
      data.push(state_id: 13, postcode: "84323", name: "Murino")
      data.push(state_id: 13, postcode: "84326", name: "Gusinje")

      data.push(state_id: 4, postcode: "84000", name: "Bijelo Polje")
      data.push(state_id: 4, postcode: "84202", name: "Bijelo Polje")
      data.push(state_id: 4, postcode: "84212", name: "Tomaševo")
      data.push(state_id: 4, postcode: "84213", name: "Pavino Polje")
      data.push(state_id: 4, postcode: "84303", name: "Zaton")
      data.push(state_id: 4, postcode: "84305", name: "Lozna")

      data.push(state_id: 11, postcode: "84205", name: "Mojkovac")
      data.push(state_id: 11, postcode: "84206", name: "Bistrica")

      data.push(state_id: 21, postcode: "84220", name: "Žabljak")
      data.push(state_id: 21, postcode: "84224", name: "Njegovuđa")

      data.push(state_id: 14, postcode: "84210", name: "Pljevlja")
      data.push(state_id: 14, postcode: "84211", name: "Pljevlja")
      data.push(state_id: 14, postcode: "84214", name: "Vrulja")
      data.push(state_id: 14, postcode: "84215", name: "Gradac")
      data.push(state_id: 14, postcode: "84216", name: "Kovačevići")
      data.push(state_id: 14, postcode: "84217", name: "Boljanići")
      data.push(state_id: 14, postcode: "84218", name: "Šula")
      data.push(state_id: 14, postcode: "84219", name: "Odžak")
      data.push(state_id: 14, postcode: "84223", name: "Kosanica")

      data.push(state_id: 17, postcode: "84310", name: "Rožaje")
      data.push(state_id: 17, postcode: "84311", name: "Skarepača")
      data.push(state_id: 17, postcode: "84314", name: "Bać")
      data.push(state_id: 17, postcode: "84315", name: "Biševo")


      data.push(state_id: 5, postcode: "85300", name: "Budva")
      data.push(state_id: 5, postcode: "85300", name: "Petrovac")
      data.push(state_id: 5, postcode: "85311", name: "Budva 2")
      data.push(state_id: 5, postcode: "85312", name: "Budva (Merkur)")
      data.push(state_id: 5, postcode: "85314", name: "Perazića Do")
      data.push(state_id: 5, postcode: "85315", name: "Sveti Stefan")
      data.push(state_id: 5, postcode: "85316", name: "Bečići")
      data.push(state_id: 5, postcode: "85317", name: "Lastva Grbaljska")
      data.push(state_id: 5, postcode: "85352", name: "Buljarica")

      data.push(state_id: 19, postcode: "85320", name: "Tivat")
      data.push(state_id: 19, postcode: "85323", name: "Radovići")
      data.push(state_id: 19, postcode: "85332", name: "Donja Lastva")
      data.push(state_id: 19, postcode: "85333", name: "Lepetane")

      data.push(state_id: 10, postcode: "85330", name: "Kotor")
      data.push(state_id: 10, postcode: "85318", name: "Radanovići")
      data.push(state_id: 10, postcode: "85331", name: "Dobrota")
      data.push(state_id: 10, postcode: "85334", name: "Stoliv")
      data.push(state_id: 10, postcode: "85335", name: "Prčanj")
      data.push(state_id: 10, postcode: "85336", name: "Perast")
      data.push(state_id: 10, postcode: "85337", name: "Risan")
      data.push(state_id: 10, postcode: "85338", name: "Morinj")
      data.push(state_id: 10, postcode: "85339", name: "Stari grad Kotor")

      data.push(state_id: 8, postcode: "85340", name: "Herceg Novi")
      data.push(state_id: 8, postcode: "85342", name: "Kamenari")
      data.push(state_id: 8, postcode: "85343", name: "Bijela")
      data.push(state_id: 8, postcode: "85344", name: "Baošići")
      data.push(state_id: 8, postcode: "85345", name: "Ðenovići")
      data.push(state_id: 8, postcode: "85346", name: "Zelenika")
      data.push(state_id: 8, postcode: "85347", name: "Igalo")
      data.push(state_id: 8, postcode: "85348", name: "Meljine")

      data.push(state_id: 20, postcode: "85360", name: "Ulcinj")
      data.push(state_id: 20, postcode: "85361", name: "Velika Plaža")
      data.push(state_id: 20, postcode: "85362", name: "Ulcinj 2")
      data.push(state_id: 20, postcode: "85366", name: "Vladimir")
      data.push(state_id: 20, postcode: "85367", name: "Štoj")
      data.push(state_id: 20, postcode: "85368", name: "Valdanos")
      
      data.each do |sd|
        Subdivision.create(name: sd[:name], postcode: sd[:postcode], state_id: sd[:state_id])
      end
      
    when :retrive_details
      # Get data from OpenStreetMaps.nominatum
      base_url = "https://nominatim.openstreetmap.org/search?country=montenegro"
      aux_url  = "addressdetails=1&format=json"
      
      Subdivision.all.each do |sd|
        post_url = "postalcode=#{sd.postcode}"
        endpoint = [base_url, post_url, aux_url].join("&")
        
        # endpoint = "https://nominatim.openstreetmap.org/search?country=montenegro&postalcode=85368&addressdetails=1&format=json"
        request  = JSON.parse(RestClient.get(endpoint), object_class: OpenStruct)
        

        if request.empty?
          puts "Request was returned empty. No data for: [#{sd.name} - #{sd.postcode}]\n"
        else
          response = request.try(:first)
          
          unless response.nil?
            sd.update(
              display_name: response.display_name.split(",").try(:first),
              boundingbox: response.try(:boundingbox),
              lat: response.try(:lat).try(:to_f),
              lon: response.try(:lon).try(:to_f),
              reference_id: response.try(:place_id)
            )
          end
        end
      end
      
    else
      return "Nothing happened"
    end
  end
end
