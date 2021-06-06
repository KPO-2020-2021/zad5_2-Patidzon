#include <iostream>
#include <fstream>
#include <iomanip>
#include <cmath>
#include <cassert>
#include <unistd.h>
#include "lacze_do_gnuplota.hh"
#include "size.h"
#include "dron.h"
#include "brylawzorcowa.h"
#include "vector.h"
//#include "prostopadloscian.h"
#include "graniastoslup.h"
#include "scena.h"
#include "matrix.h"
#include <cstdlib>



class przeszkoda: public brylawzorcowa
{
private:
  Vector<SIZE> wierzcholkiwzor[SIZE2];
  Vector<SIZE> wierzcholki[SIZE2];
public:
    przeszkoda(/* args */);
    ~przeszkoda();
   void tworzgorezostrymszczytem(const char* nazwaplikuzapisu,Vector<SIZE> skala,Vector<SIZE> przesunieciepoczatkowe);
   void tworzgorezdlugagrania(const char* nazwaplikuzapisu,Vector<SIZE> skala,Vector<SIZE> przesunieciepoczatkowe);
   void tworzplaskowyz(const char* nazwaplikuzapisu,Vector<SIZE> skala,Vector<SIZE> przesunieciepoczatkowe);
   void  zaladujwspwzor();
   void zapiszwsp (const char* nazwaplikuzapisu);
};

przeszkoda::przeszkoda(/* args */)
{
}

przeszkoda::~przeszkoda()
{
}
/*!
*****************************************************************************
 | \brief Metoda klasy przeszkoda.                                                 |
 |  Argumenty:                                                                |
 |      Brak argumentow.                                                      |
 |  Zwraca:                                                                   |
 |      Macierz wypelnione wartosciami z pliku .                                       |
 */
 void przeszkoda::zaladujwspwzor (){
   int i;
std::fstream plik;
plik.open(nazwaplikugraniastoslup,std::ios::in);
if (plik.good()==true)
{
for ( i = 0; i < SIZE2; i++)
     {
       
       plik>>wierzcholkiwzor[i];
       //std::cout<<wierzcholkiwzor[i];
       
     }
  
}
else {
  std::cout<<"nie mozna odczytac pliku"<<std::endl;
  exit(0);}
plik.close();
}


/*!
*****************************************************************************
 | \brief Metoda klasy przeszkoda.                                                 |
 |  Argumenty:                                                                |
 |     nazwaplikuzapisu-nazwa pliku do ktorej zostana zapisane wspolrzedne przeszkodaa                                                      |
 |      zapisuje do pliku wartosci z tabeli.                                       |
 */
void przeszkoda::zapiszwsp (const char* nazwaplikuzapisu){

int i;
std::ofstream plik;
plik.open(nazwaplikuzapisu,std::ios::out);
if (plik.good()==true)
{
for ( i = 0; i <SIZE2; i++)
     {
       
       plik<<wierzcholki[i]<<std::endl;
      i++;
      plik<<wierzcholki[i]<<std::endl;
      i++;
      plik<<wierzcholki[i]<<std::endl;
      i++;
       plik<<wierzcholki[i]<<std::endl<<std::endl;
       
     }
  
}
else {
  std::cout<<"nie mozna odczytac pliku"<<std::endl;
  exit(0);}
plik.close();
  }



void przeszkoda::tworzplaskowyz(const char* nazwaplikuzapisu,Vector<SIZE> skala,Vector<SIZE> przesunieciepoczatkowe){
zaladujwspwzor();
for ( int i = 0; i < SIZE2; i++)
     {
       
       wierzcholki[i]=wierzcholkiwzor[i]*skala+polozeniepoczatkowe;
      
       
     }

zapiszwsp(nazwaplikuzapisu);


}  
void przeszkoda::tworzgorezdlugagrania(const char* nazwaplikuzapisu,Vector<SIZE> skala,Vector<SIZE> przesunieciepoczatkowe){
zaladujwspwzor();
for ( int i = 0; i < SIZE2; i++)
     {
       
       if(wierzcholkiwzor[i][2]>0,5){
           if (wierzcholkiwzor[i][0]<0)
           {
               wierzcholkiwzor[i][0]=std::fabs(wierzcholkiwzor[i][0]);
           }
        };
       wierzcholki[i]=wierzcholkiwzor[i]*skala+polozeniepoczatkowe;
       
     }

zapiszwsp(nazwaplikuzapisu);

}
void przeszkoda::tworzgorezostrymszczytem(const char* nazwaplikuzapisu,Vector<SIZE> skala,Vector<SIZE> przesunieciepoczatkowe){

for ( int i = 0; i < SIZE2; i++)
     {
       
         if (wierzcholkiwzor[i][2]>0,5) { // Tutaj realizowana jest deformacja
	  wierzcholkiwzor[i][0]= wierzcholkiwzor[i][1] = 0;
      } else if (wierzcholkiwzor[i][2]== 0.5) {
          wierzcholkiwzor[i][0] /= 2;  wierzcholkiwzor[i][1] /= 2;
      }
       wierzcholki[i]=wierzcholkiwzor[i]*skala+polozeniepoczatkowe;
       
     }

zapiszwsp(nazwaplikuzapisu);



}