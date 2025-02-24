-- Created table with varchar types to ensure everything properly loads, then imported data

CREATE TABLE art_collection (
	__id VARCHAR(25) PRIMARY KEY,
	data_loaded_at VARCHAR(25),
	the_geom VARCHAR(100),
	analysis_neighborhood VARCHAR(100),
	supervisor_district VARCHAR(3), 
	cultural_districts VARCHAR(100),
	number_of_districts VARCHAR(3),
	longitude DECIMAL(11, 7),
	latitude DECIMAL(11, 7),
	zip_code VARCHAR(5),
	street_address_or_intersection VARCHAR(100),
	location_description VARCHAR(100),
	current_location VARCHAR(50),
	facility VARCHAR(50),
	media_support VARCHAR(500),
	medium VARCHAR(100),
	display_dimensions VARCHAR(100),
	display_title VARCHAR(100),
	credit_line VARCHAR(200), 
	artist VARCHAR(100), 
	accession_number VARCHAR(50),
	data_as_of VARCHAR(50), 
	creation_date VARCHAR(50)
);

ALTER TABLE art_collection ALTER COLUMN media_support TYPE VARCHAR(500);
ALTER TABLE art_collection ALTER COLUMN medium TYPE VARCHAR(500);
ALTER TABLE art_collection ALTER COLUMN location_description TYPE VARCHAR(500);
ALTER TABLE art_collection ALTER COLUMN facility TYPE VARCHAR(500);

SELECT *
FROM art_collection;

-- Data cleaning:

-- Couldn't find queries for SFO updates because I realized much later that pgAdmin doesn't store more than the last 20 queries in their history.  

UPDATE art_collection
SET analysis_neighborhood = 'Twin Peaks', 
  supervisor_district = 07, 
  cultural_districts = 'N/A'
WHERE analysis_neighborhood IS NULL
   AND facility = 'Laguna Honda Hospital';
   
UPDATE art_collection
SET supervisor_district = 7
WHERE facility = 'Laguna Honda Hospital';

UPDATE art_collection
SET analysis_neighborhood = 'Sunset/Parkside', 
  supervisor_district = 4, 
  cultural_districts = 'Sunset Chinese Cultural District',
  longitude = -122.478188,
  latitude = 37.736197
WHERE analysis_neighborhood IS NULL
   AND facility = 'Trocadero Clubhouse';

UPDATE art_collection
SET analysis_neighborhood = 'N/A',
supervisor_district = 0,
cultural_districts = 'N/A'
WHERE __id = 'row-jant-6drs_p7n4';

UPDATE art_collection
SET analysis_neighborhood = 'Presidio', 
  supervisor_district = 2, 
  cultural_districts = 'N/A',
  longitude = -122.500637,
  latitude = 37.785569
WHERE analysis_neighborhood IS NULL
   AND __id = 'row-yr5p~rdce~ihbi';

UPDATE art_collection
SET analysis_neighborhood = 'Marina', 
  supervisor_district = 2, 
  cultural_districts = 'N/A',
  longitude = -122.439149,
  latitude = 37.806837 
WHERE __id = 'row-k2ez-6yrq-q9i2';

UPDATE art_collection
SET analysis_neighborhood = 'Inner Sunset', 
  supervisor_district = 7, 
  cultural_districts = 'Sunset Chinese Cultural District',
  longitude = -122.468689,
  latitude = 37.769769 
WHERE analysis_neighborhood IS NULL
   AND __id = 'row-gn25_f5jt~9i69';

UPDATE art_collection
SET analysis_neighborhood = 'Inner Sunset', 
  supervisor_district = 7, 
  cultural_districts = 'Sunset Chinese Cultural District',
  longitude = -122.458159,
  latitude = 37.771152,
  __id = 'row-8rg4_ggqh~p25h'
WHERE __id = 'row-8rg4_ggqh~p25h';

UPDATE art_collection
SET analysis_neighborhood = 'Financial District', 
  supervisor_district = 3, 
  cultural_districts = 'N/A',
  longitude = -122.393967,
  latitude = 37.795350
WHERE analysis_neighborhood IS NULL
   AND __id = 'row-useq-ure7_isd5';

UPDATE art_collection
SET analysis_neighborhood = 'Bayview Hunters Point', 
  supervisor_district = 10, 
  cultural_districts = 'N/A',
  longitude = -122.387482,
  latitude = 37.748995 
WHERE analysis_neighborhood IS NULL
   AND __id = 'row-qe8d.793d-6kqc';   

UPDATE art_collection
SET longitude = -122.457319,
latitude = 37.749185
WHERE longitude IS NULL
AND latitude IS NULL
AND street_address_or_intersection = '375 Laguna Honda Boulevad';

UPDATE art_collection
SET zip_code = 94102
WHERE __id = 'row-ucqc~nzj5-mbcj';

UPDATE art_collection
SET zip_code = 94133
WHERE __id = 'row-ihns~isxe-p7rt';

UPDATE art_collection
SET zip_code = 94117
WHERE __id = 'row-cu6n_wxy6-k4nn';

UPDATE art_collection
SET zip_code = 94116
WHERE __id = 'row-ir9u-f9fb~iffv';

UPDATE art_collection
SET street_address_or_intersection = 'San Francisco International Airport'
WHERE street_address_or_intersection IS NULL
AND current_location = 'SFO';

UPDATE art_collection
SET location_description = 'N/A'
WHERE location_description IS NULL;

UPDATE art_collection
SET current_location = 'Public Display'
WHERE current_location IS NULL;

UPDATE art_collection
SET cultural_districts = 'Pacific Islander Cultural District'
WHERE cultural_districts IS NULL
AND supervisor_district = '10'
AND zip_code = '94134';

UPDATE art_collection
SET cultural_districts = 'African American Arts & Cultural District'
WHERE cultural_districts IS NULL 
AND analysis_neighborhood = 'Bayview Hunters Point'
AND supervisor_district = '10';

UPDATE art_collection
SET cultural_districts = 'N/A'
WHERE cultural_districts IS NULL 
AND supervisor_district = '7';

UPDATE art_collection
SET cultural_districts = 'Sunset Chinese Cultural District'
WHERE cultural_districts IS NULL 
AND analysis_neighborhood = 'Inner Sunset';

UPDATE art_collection
SET cultural_districts = 'Sunset Chinese Cultural District'
WHERE cultural_districts IS NULL 
AND analysis_neighborhood = 'Sunset/Parkside';

UPDATE art_collection
SET cultural_districts = 'Calle 24 Latino Cultural District'
WHERE __id = 'row-aw8d~rcr4-mgid';

UPDATE art_collection
SET cultural_districts = 'Calle 24 Latino Cultural District'
WHERE __id = 'row-z89k-fx8n~52hx';

UPDATE art_collection
SET cultural_districts = 'Calle 24 Latino Cultural District'
WHERE __id = 'row-byi2.zu5w_qphj';

UPDATE art_collection
SET cultural_districts = 'Calle 24 Latino Cultural District'
WHERE __id = 'row-2q3h.6bwt~kewg';

UPDATE art_collection
SET cultural_districts = 'Calle 24 Latino Cultural District'
WHERE __id = 'row-w9k3.g5em~rrqm';

UPDATE art_collection
SET cultural_districts = 'Japantown Cultural District'
WHERE cultural_districts IS NULL
AND supervisor_district = '05'
AND analysis_neighborhood = 'Japantown';

UPDATE art_collection
SET cultural_districts = 'American Indian Cultural District'
WHERE __id = 'row-mu9c_8nwv.qhhp';

UPDATE art_collection
SET cultural_districts = 'American Indian Cultural District'
WHERE __id = 'row-fq82~x3a5~kjq3';

UPDATE art_collection
SET cultural_districts = 'Compton’s Transgender Cultural District'
WHERE cultural_districts IS NULL
AND supervisor_district = '05'
AND analysis_neighborhood = 'Tenderloin'
AND street_address_or_intersection = '570 Ellis Street';

UPDATE art_collection
SET cultural_districts = 'SOMA Pilipinas Cultural District'
WHERE cultural_districts IS NULL
AND supervisor_district = '06'
AND analysis_neighborhood = 'Financial District/South Beach'
AND street_address_or_intersection = 'Market Street & Kearny Street';

UPDATE art_collection
SET cultural_districts = 'N/A'
WHERE cultural_districts IS NULL;

UPDATE art_collection
SET creation_date = '2015'
WHERE creation_date IS NULL
AND artist = 'O''Malley, Susan';

UPDATE art_collection
SET creation_date = '2015'
WHERE creation_date IS NULL
AND artist = 'Arcega, Michael';

UPDATE art_collection
SET creation_date = '2012'
WHERE __id = 'row-uze6~sjuu-s7s9';

UPDATE art_collection
SET creation_date = '2012'
WHERE __id = 'row-bahs_pvib-m3n2';

UPDATE art_collection
SET creation_date = '2012'
WHERE __id = 'row-5esi~fimn_pt2b';

UPDATE art_collection
SET creation_date = '2013'
WHERE __id = 'row-zct9_vydc.hhiy';

UPDATE art_collection
SET creation_date = '2014'
WHERE creation_date IS NULL
AND artist = 'Marsh, Vanessa';

UPDATE art_collection
SET creation_date = '2014'
WHERE creation_date IS NULL
AND artist = 'Rodriguez, Lordy'; 

UPDATE art_collection
SET creation_date = '1936'
WHERE __id = 'row-2fui_9hcw.24kj';

UPDATE art_collection
SET creation_date = '1926'
WHERE __id = 'row-qfqr.rgh3~f8th';

UPDATE art_collection
SET creation_date = '1917'
WHERE __id = 'row-ag9q-4yt3-u52a';

UPDATE art_collection
SET creation_date = '1936'
WHERE __id = 'row-dvqi~i3rb_ayaq';

UPDATE art_collection
SET creation_date = '1927'
WHERE __id = 'row-3dqz_3eq8~ma6y';

UPDATE art_collection
SET creation_date = '2018'
WHERE creation_date IS NULL
AND artist = 'Oliver, Scott'; 

UPDATE art_collection
SET creation_date = '1992'
WHERE __id = 'row-54ec.m8qw_pv9h';

UPDATE art_collection
SET creation_date = '1997'
WHERE __id = 'row-p3ye~nsup_miqi';

UPDATE art_collection
SET creation_date = '1982'
WHERE creation_date IS NULL
AND artist = 'Potts, Don'; 

UPDATE art_collection
SET creation_date = '1986'
WHERE __id = 'row-qz5d~qty2~xxbd';

UPDATE art_collection
SET creation_date = '2010'
WHERE __id = 'row-2h63~gdch.6p3m';

UPDATE art_collection
SET creation_date = '1948'
WHERE __id = 'row-zn2b-zihd.9tfr';

UPDATE art_collection
SET creation_date = '2004'
WHERE __id = 'row-a3q2~9kud.m2bh';

UPDATE art_collection
SET creation_date = '2006'
WHERE __id = 'row-iszn-mqpn-8vsn';

UPDATE art_collection
SET creation_date = '1993'
WHERE __id = 'row-rkq8.zdy9_mwkq';

UPDATE art_collection
SET creation_date = '1979'
WHERE __id = 'row-crbn-im2j-radi';

UPDATE art_collection
SET creation_date = '2018'
WHERE __id = 'row-ucqc~nzj5-mbcj';

UPDATE art_collection
SET creation_date = '1985'
WHERE __id = 'row-2qp3-7ab3-jep6';

UPDATE art_collection
SET creation_date = '1919'
WHERE __id = 'row-8jpc_mkuv-mzjh';

UPDATE art_collection
SET creation_date = '2018'
WHERE __id = 'row-79xd-7v4t_nx75';

UPDATE art_collection
SET creation_date = '2000'
WHERE __id = 'row-nb6a_2wxg.sgtg';

UPDATE art_collection
SET creation_date = '2018'
WHERE __id = 'row-n4sp-guai_p7f8';

UPDATE art_collection
SET creation_date = '1978'
WHERE __id = 'row-fpxe_kvk5-wuht';

UPDATE art_collection
SET creation_date = '2003 - 2005'
WHERE __id = 'row-s8qd~eg68~cvxx';

UPDATE art_collection
SET creation_date = '2003'
WHERE __id = 'row-2bgt.svhw.xnbx';

UPDATE art_collection
SET creation_date = '2008'
WHERE __id = 'row-ann8-dmhc-v9v3';

UPDATE art_collection
SET creation_date = '1985'
WHERE __id = 'row-kuic~w92i-tcap';

UPDATE art_collection
SET creation_date = '2001'
WHERE __id = 'row-rdwf_ihdt_r8c7';

UPDATE art_collection
SET creation_date = '1996'
WHERE __id = 'row-z5ey~867w.w2gj';

UPDATE art_collection
SET creation_date = '2003'
WHERE __id = 'row-se2p_42hz-xvcr';

UPDATE art_collection
SET creation_date = '1976'
WHERE __id = 'row-j2uy~39ub~49nq';

UPDATE art_collection
SET creation_date = '1979 - 1981'
WHERE __id = 'row-d594_w5d7.dr2p';

UPDATE art_collection
SET creation_date = '2019'
WHERE __id = 'row-3aa8-te9m.shp7';

UPDATE art_collection
SET creation_date = '1994'
WHERE __id = 'row-r8bp_rpt2~vn6t';

UPDATE art_collection
SET creation_date = '1978'
WHERE __id = 'row-66xv-3k42.scd7';

UPDATE art_collection
SET creation_date = '2007'
WHERE __id = 'row-kn7b~4gc8~5yne';

UPDATE art_collection
SET creation_date = '1960'
WHERE __id = 'row-ux2z-piid_py3q';

UPDATE art_collection
SET creation_date = '1904'
WHERE __id = 'row-mxrt-zzb9.hjwf';

UPDATE art_collection
SET creation_date = '1986'
WHERE __id = 'row-dwq4.e6cn.4pwd';

UPDATE art_collection
SET creation_date = '1978'
WHERE __id = 'row-zt64_k7t4_beih';

UPDATE art_collection
SET creation_date = '1961'
WHERE __id = 'row-6f6g-vrg7-pt3d';

UPDATE art_collection
SET creation_date = 'N/A'
WHERE creation_date IS NULL;

UPDATE art_collection
SET medium = 'Digital print', 
credit_line = 'Purchased by the San Francisco Arts Commission for the San Francisco International Airport; Collection of the City & County of San Francisco'
WHERE credit_line IS NULL
AND medium IS NULL
AND artist = 'O''Malley, Susan';

UPDATE art_collection
SET credit_line = 'Purchased for the San Francisco International Airport by the San Francisco Arts Commission; Collection of the City & County of San Francisco'
WHERE artist = 'Misrach, Richard' AND 
(medium IS NULL
OR media_support IS NULL
OR credit_line IS NULL
OR display_dimensions IS NULL); 

UPDATE art_collection
SET media_support = 'waterjet cut Steel',
display_dimensions = '103 x 594 in.',
credit_line = 'Collection of the City & County of San Francisco. Commissioned by the San Francisco Arts Commission for the Recreation & Parks Department for Guy Place Mini Park'
WHERE __id = 'row-zdzs_79g9_ha6n';

UPDATE art_collection
SET credit_line = 'Purchased by the San Francisco Arts Commission for the San Francisco International Airport Grand Hyatt Hotel; Collection of the City & County of San Francisco',
media_support = 'Archival pigment print'
WHERE artist = 'Loewenthal, Terri' AND 
(medium IS NULL
OR media_support IS NULL
OR credit_line IS NULL
OR display_dimensions IS NULL); 

UPDATE art_collection
SET medium = 'Aquatint and etching'
WHERE __id IN ('row-6ecc~mz54~viqc', 'row-446i-pqbp-qn66');

UPDATE art_collection
SET credit_line = 'Collection of the City & County of San Francisco'
WHERE artist = 'Thomas, Hank Willis' AND 
(medium IS NULL
OR media_support IS NULL
OR credit_line IS NULL
OR display_dimensions IS NULL); 

UPDATE art_collection
SET medium = 'painted steel'
WHERE __id = 'row-whxs.ap95-g8xt';

UPDATE art_collection
SET medium = 'concrete'
WHERE __id = 'row-688i-d7gi~9nqj';

-- Noticed many of the values were the same between medium and media_support columns so I imputed with the same values.

UPDATE art_collection
SET medium = media_support
WHERE medium IS NULL;

UPDATE art_collection
SET media_support = medium
WHERE media_support IS NULL;

-- Imputed the remaining as N/A because they couldn't be found.

UPDATE art_collection
SET media_support = 'N/A',
medium = 'N/A'
WHERE medium IS NULL
OR media_support IS NULL;

-- Given what I know about art and art history, I noticed facilities often bought art and added it to their collections. Each piece in a collection often has the same credit line so I quickly scanned all of them in each collection ensure they'd be the same. This makes it easier to impute in batches as opposed to one by one. 

-- Following returned rows with null values in the specified columns: 
SELECT * 
FROM art_collection
WHERE display_dimensions IS NULL;

SELECT * 
FROM art_collection
WHERE credit_line IS NULL;

SELECT * 
FROM art_collection
WHERE credit_line IS NULL
OR display_dimensions IS NULL;

-- returns counts for each facility with null values in the remaining 2 columns: 
SELECT facility, COUNT(*) AS facility_count
FROM art_collection 
WHERE credit_line IS NULL
OR display_dimensions IS NULL
GROUP BY facility
ORDER BY facility_count DESC;

-- Update code:
UPDATE art_collection
SET credit_line = 'Collection of the City and County of San Francisco
Purchased for Laguna Honda by the San Francisco Arts Commission'
WHERE facility = 'Laguna Honda Hospital' 
AND credit_line IS NULL; 

UPDATE art_collection
SET credit_line = 'Commissioned for the San Francisco International Airport; Collection of the City & County of San Francisco'
WHERE facility = 'Terminal 1' 
AND credit_line IS NULL; 

UPDATE art_collection
SET credit_line = 'Collection of the City & County of San Francisco; Purchased by the San Francisco Arts Commission for the San Francisco International Airport Hotel'
WHERE facility = 'Hotel' 
AND credit_line IS NULL; 

UPDATE art_collection
SET credit_line = 'Collection of the City & County of San Francisco'
WHERE __id = 'row-j6jf_jj2f_dmh3';

UPDATE art_collection
SET credit_line = 'Collection of the City & County of San Francisco'
WHERE __id IN ('row-pp69-3h6u.gq3y', 'row-3aa8-te9m.shp7', 'row-iicd~pfc2-ze65', 'row-qbe6.s3yy~qikp', 'row-m58b_9xh9-km7w');

UPDATE art_collection
SET credit_line = 'Commissioned by the San Francisco Arts Commission for the San Francisco International Airport; Collection of the City & County of San Francisco'
WHERE __id = 'row-7ukv-g2sj~x6qs';

UPDATE art_collection
SET credit_line = 'Collection of the City & County of San Francisco; Gift to the City by ArtCare, a nonprofit organization'
WHERE __id = 'row-ucqc~nzj5-mbcj';

UPDATE art_collection
SET credit_line = 'Purchased by the San Francisco Arts Commission for the San Francisco International Airport; Collection of the City and County of San Francisco'
WHERE __id = 'row-atfy-zs99~pwyi';

UPDATE art_collection
SET credit_line = 'A gift to the citizens of San Francisco from the San Francisco Chronicle, Dedicated April 19, 1958; Collection of the City & County of San Francisco'
WHERE __id = 'row-xp4d_fbpc-ai2q';

UPDATE art_collection
SET credit_line = 'N/A'
WHERE credit_line IS NULL;

-- Updates: 
UPDATE art_collection
SET display_dimensions = 'N/A'
WHERE display_dimensions IS NULL
AND artist = 'deSoto, Lewis';

UPDATE art_collection
SET display_dimensions = 'N/A'
WHERE display_dimensions IS NULL
AND artist = 'Smith, Owen';

UPDATE art_collection
SET display_dimensions = 'N/A'
WHERE display_dimensions IS NULL
AND artist in ('Anonymous', 'Igarashi, Takenobu', 'Aycock, Alice', 'Hung, Su-Chen');

-- returns counts for each facility with null values in the remaining 2 columns: 
SELECT artist, COUNT(*) AS artist_count
FROM art_collection 
WHERE display_dimensions IS NULL
GROUP BY artist
ORDER BY artist_count DESC;

-- Created a view to make it easier to see artist and display_title when looking at works with missing dimensions

CREATE VIEW missing_dimensions AS
SELECT __id, display_title, artist
FROM art_collection
WHERE display_dimensions IS NULL;

SELECT __id, artist, display_title
FROM missing_dimensions;

-- Updates: 
UPDATE art_collection
SET display_dimensions = '180 x 184 x 14 in.'
WHERE __id = 'row-pp69-3h6u.gq3y';

UPDATE art_collection
SET display_dimensions = '1102 x 530 in.'
WHERE __id = 'row-pp69-3h6u.gq3y';

UPDATE art_collection
SET display_dimensions = '180 x 180 in.'
WHERE __id = 'row-66ah_4mi7~h9gw';

UPDATE art_collection
SET display_dimensions = '36 in.'
WHERE __id = 'row-ma2i~76h9_u56v';

UPDATE art_collection
SET display_dimensions = '108 x 360 in.'
WHERE __id = 'row-46t3_v95i.a2tr';

UPDATE art_collection
SET display_dimensions = '15 x 16 in.'
WHERE __id = 'row-zfc3.wy6f-38at';

UPDATE art_collection
SET display_dimensions = '180 x 420 in.'
WHERE __id = 'row-44ch~6tfp~xv3y';

UPDATE art_collection
SET display_dimensions = '132 x 540 in.'
WHERE __id = 'row-xkfb.apkv_cmed';

UPDATE art_collection
SET display_dimensions = '33 x 75 x 23 in.'
WHERE __id = 'row-se7h_8hss-zha3';

UPDATE art_collection
SET display_dimensions = '204 x 1800 in.'
WHERE __id = 'row-3aa8-te9m.shp7';

UPDATE art_collection
SET display_dimensions = '312 x 96 x 2 in.'
WHERE __id = 'row-ivcn-ns8g-hdf7';

UPDATE art_collection
SET display_dimensions = '96 x 132 in.'
WHERE __id = 'row-htnm~nmaa_aqd2';

UPDATE art_collection
SET display_dimensions = '108 x 456 in.'
WHERE __id = 'row-2c7f_jchw_fwd5';

UPDATE art_collection
SET display_dimensions = '68 x 68 in.'
WHERE __id = 'row-6f6g-vrg7-pt3d';

UPDATE art_collection
SET display_dimensions = '204 x 168 x 144 in.'
WHERE __id = 'row-g4em-kn7h.7yde';

UPDATE art_collection
SET display_dimensions = '12 x 228 x 72 in.'
WHERE __id = 'row-r98n.edia-a3x9';

UPDATE art_collection
SET display_dimensions = '84 x 210 in.'
WHERE __id = 'row-dm2e-fasp.gth7';

UPDATE art_collection
SET display_dimensions = 'Terrazzo Floor ~1,954 square feet'
WHERE __id = 'row-7e9k_nbrm-mvij';

UPDATE art_collection
SET display_dimensions = 'N/A'
WHERE display_dimensions IS NULL;

-- Check for duplicates:

-- returns duplicate accession_number values:
SELECT accession_number, COUNT(*) FROM art_collection
GROUP BY accession_number
HAVING COUNT(*) > 1;

-- Searched for like values using the following query as an example:
SELECT *
FROM art_collection
WHERE accession_number LIKE '1984.7%';

-- Updated duplicates by adding '.1', '.2' to the end of each accession_number, respectively:
UPDATE art_collection
SET accession_number = 'T2018.3.1'
WHERE __id = 'row-rqgm-tmhd~q2c8';

UPDATE art_collection
SET accession_number = 'T2018.3.2'
WHERE __id = 'row-hfxs.ri6z-hbc5';

UPDATE art_collection
SET accession_number = '1934.1.1'
WHERE __id = 'row-ypvm-fn76~krge';

UPDATE art_collection
SET accession_number = '1934.1.2'
WHERE __id = 'row-tcvp_6qzj.xzws';

UPDATE art_collection
SET accession_number = '1984.7.1'
WHERE __id = 'row-kszf.ej2y_r96z';

UPDATE art_collection
SET accession_number = '1984.7.2'
WHERE __id = 'row-9tnd.s3ve_e89p';

UPDATE art_collection
SET accession_number = '1985.1.1'
WHERE __id = 'row-gp27.22f2-hkhn';

UPDATE art_collection
SET accession_number = '1985.1.2'
WHERE __id = 'row-98ua.4cba~aiv3';

UPDATE art_collection
SET accession_number = '1942.1.1'
WHERE __id = 'row-dqy9.shkj-xdfw';

UPDATE art_collection
SET accession_number = '1942.1.2'
WHERE __id = 'row-xesn.cmbn_htvi';

UPDATE art_collection
SET accession_number = '1986.1.1'
WHERE __id = 'row-dwgk.nikp~apz4';

UPDATE art_collection
SET accession_number = '1986.1.2'
WHERE __id = 'row-32wa-curh-zvxh';

UPDATE art_collection
SET accession_number = '1986.2.1'
WHERE __id = 'row-dwq4.e6cn.4pwd';

UPDATE art_collection
SET accession_number = '1986.2.2'
WHERE __id = 'row-d594_w5d7.dr2p';

UPDATE art_collection
SET accession_number = '1934.2.1'
WHERE __id = 'row-qtrf~yuwq_bnn4';

UPDATE art_collection
SET accession_number = '1934.2.2'
WHERE __id = 'row-b6zt_5kdh~xkhd';

-- Update inconsistent formats:

-- For creation_date: selected distinct values and searched using LIKE:
SELECT DISTINCT creation_date
FROM art_collection;

SELECT *
FROM art_collection
WHERE creation_date LIKE '20__ - 20__';

-- Updates:
UPDATE art_collection
SET creation_date = 'Unknown'
WHERE creation_date = 'N/A';

UPDATE art_collection
SET creation_date = '2003'
WHERE creation_date = '2003-07-26T00:00:00.000';

UPDATE art_collection
SET creation_date = 'ca. 1999-2002'
WHERE creation_date IN ('c.1999-2002', 'c. 1999-2002', '1999-2002');

UPDATE art_collection
SET creation_date = 'ca. 2016-2019'
WHERE creation_date = '2016 or 2019?';

UPDATE art_collection
SET creation_date = '2001'
WHERE creation_date = '2001 (Fabricated in 1989)';

UPDATE art_collection
SET creation_date = 'ca. 1983'
WHERE creation_date = '1983?';

UPDATE art_collection
SET creation_date = 'ca. 1930-1940'
WHERE creation_date = '1930s';

UPDATE art_collection
SET creation_date = 'ca. 1979-1981'
WHERE creation_date = '1979 - 1981';

UPDATE art_collection
SET creation_date = 'ca. ' || creation_date
WHERE creation_date LIKE '19__-19__';

UPDATE art_collection
SET creation_date = 'ca. ' || creation_date
WHERE creation_date LIKE '19__-20__';

UPDATE art_collection
SET creation_date = 'ca. ' || creation_date
WHERE creation_date LIKE '20__-20__';

UPDATE art_collection
SET creation_date = 'ca. ' || creation_date
WHERE creation_date LIKE '18__-19__';

UPDATE art_collection
SET creation_date = 'ca. ' || creation_date
WHERE creation_date LIKE '18__-18__';

UPDATE art_collection
SET creation_date = 'ca. 2003-2005'
WHERE creation_date LIKE '20__ - 20__';

-- Updates:
ALTER TABLE art_collection
ADD COLUMN artist_1 VARCHAR(100),
ADD COLUMN artist_2 VARCHAR(100);

UPDATE art_collection
SET artist_1 = split_part(artist, ' and ', 1),
    artist_2 = split_part(artist, ' and ', 2)
WHERE artist LIKE '%and%'
AND artist NOT IN ('Carland, Tammy Rae', 
'Bertrand, Raymond',
'Handforth, Mark',
'VandenBerge, Peter',
'Berlandina, Jane',
'Vaillancourt, Armand',
'Kirkland, Larry',
'Fernandez, Rudy',
'Blake, Nayland W.',
'Nagasawa, Nobuho, Margrill, Anita and Buchen, Bill and Mary',
'Hayes, Frederick, JoeSam and Washington, Horace'
);

ALTER TABLE art_collection
ADD COLUMN artist_3 VARCHAR(100),
ADD COLUMN artist_4 VARCHAR(100);

UPDATE art_collection
SET artist = 'Nagasawa, Nobuho and Margrill, Anita and Buchen, Bill and Buchen, Mary'
WHERE artist = 'Nagasawa, Nobuho, Margrill, Anita and Buchen, Bill and Mary';

UPDATE art_collection
SET artist_1 = split_part(artist, ' and ', 1),
    artist_2 = split_part(artist, ' and ', 2),
    artist_3 = split_part(artist, ' and ', 3),
    artist_4 = split_part(artist, ' and ', 4)
WHERE artist = 'Nagasawa, Nobuho and Margrill, Anita and Buchen, Bill and Buchen, Mary';

UPDATE art_collection
SET artist = 'Hayes, Frederick and JoeSam and Washington, Horace'
WHERE artist = 'Hayes, Frederick, JoeSam and Washington, Horace';

UPDATE art_collection
SET artist_1 = split_part(artist, ' and ', 1),
    artist_2 = split_part(artist, ' and ', 2),
    artist_3 = split_part(artist, ' and ', 3)
WHERE artist = 'Hayes, Frederick and JoeSam and Washington, Horace';

-- Check to see if only single names appear, which is true so split is accurate.
SELECT DISTINCT artist
FROM art_collection
WHERE artist_1 IS NULL
OR artist_2 IS NULL;

-- Impute artist_1, artist_2, artist_3, artist_4 columns as N/A for these single artists
UPDATE art_collection
SET artist_1 = 'N/A',
artist_2 = 'N/A',
artist_3 = 'N/A',
artist_4 = 'N/A'
WHERE artist_1 IS NULL
OR artist_2 IS NULL;

UPDATE art_collection
SET artist_3 = 'N/A',
artist_4 = 'N/A'
WHERE artist_3 IS NULL
OR artist_4 IS NULL;

-- Added rows with only 1 artist to artist_1 column for accuracy
UPDATE art_collection
SET artist_1 = artist
WHERE artist NOT LIKE '%and%';

-- Update data types of each column:

UPDATE art_collection
SET supervisor_district = '1'
WHERE supervisor_district = '01';

UPDATE art_collection
SET supervisor_district = '2'
WHERE supervisor_district = '02';

UPDATE art_collection
SET supervisor_district = '3'
WHERE supervisor_district = '03';

UPDATE art_collection
SET supervisor_district = '4'
WHERE supervisor_district = '04';

UPDATE art_collection
SET supervisor_district = '5'
WHERE supervisor_district = '05';

UPDATE art_collection
SET supervisor_district = '6'
WHERE supervisor_district = '06';

UPDATE art_collection
SET supervisor_district = '7'
WHERE supervisor_district = '07';

UPDATE art_collection
SET supervisor_district = '8'
WHERE supervisor_district = '08';

UPDATE art_collection
SET supervisor_district = '9'
WHERE supervisor_district = '09';

ALTER TABLE art_collection
ALTER COLUMN supervisor_district 
TYPE INTEGER USING supervisor_district::INTEGER;

ALTER TABLE art_collection
ALTER COLUMN number_of_districts 
TYPE INTEGER USING number_of_districts::INTEGER;

-- Window functions:

-- Rank years by # of artworks created per year:
SELECT 
    creation_date,
    COUNT(*) AS artworks_per_year,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS rank_by_year
FROM art_collection
WHERE creation_date ~ '^\d{4}$' 
GROUP BY creation_date
ORDER BY artworks_per_year DESC;

-- Rank decades by # of artworks created per decade:
SELECT 
    LEFT(creation_date, 3) || '0s' AS decade,
    COUNT(*) AS artworks_per_decade,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS rank_by_decade
FROM art_collection
WHERE creation_date ~ '^\d{4}$' 
GROUP BY LEFT(creation_date, 3)
ORDER BY artworks_per_decade DESC;

-- Rank total contributions per artist:
SELECT 
	artist,
	COUNT (*) AS total_contributions,
	RANK () OVER (ORDER BY COUNT(*) DESC) AS rank_by_contributions
FROM art_collection
GROUP BY artist
ORDER BY rank_by_contributions;

-- Aggregate functions:

-- Function 1: count top artists per neighborhood
-- Returns possible values for neighborhood parameter in function:
SELECT DISTINCT analysis_neighborhood
FROM art_collection;

CREATE OR REPLACE FUNCTION top_artists_per_neighborhood(neighborhood TEXT)
RETURNS TABLE (
    artist TEXT,
    total_contributions BIGINT,
    rank_by_contributions BIGINT
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        a.artist::TEXT,
        COUNT(*) AS total_contributions,
        RANK() OVER (ORDER BY COUNT(*) DESC) AS rank_by_contributions
    FROM art_collection a
    WHERE a.analysis_neighborhood = neighborhood
    GROUP BY a.artist
    ORDER BY rank_by_contributions;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM top_artists_per_neighborhood('Tenderloin');

-- Function 2: counts artworks per facility
-- Returns possible values for location parameter in function:
SELECT DISTINCT facility
FROM art_collection;

CREATE OR REPLACE FUNCTION artworks_count_per_facility (location TEXT)
RETURNS TABLE (
    facility TEXT,
    total_artworks BIGINT
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        a.facility::TEXT,
        COUNT(*) AS total_artworks
    FROM art_collection a
    WHERE a.facility = location
    GROUP BY a.facility;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM artworks_count_per_facility('Huntington Park');

-- Views:

-- Create 2 views: # of artworks per supervisor_district & per cultural_district
CREATE VIEW artworks_per_supervisor_district AS
SELECT
    supervisor_district,
    COUNT(*) AS artworks_total
FROM art_collection
WHERE supervisor_district IN (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11)
GROUP BY supervisor_district
ORDER BY artworks_total DESC;

SELECT * FROM artworks_per_supervisor_district;


CREATE VIEW artworks_per_cultural_district AS
SELECT
    cultural_districts,
    COUNT(*) AS artworks_total
FROM art_collection
WHERE cultural_districts IN (
	'Pacific Islander Cultural District',
'American Indian Cultural District',
'African American Arts & Cultural District',
'Compton’s Transgender Cultural District',
'Calle 24 Latino Cultural District',
'Sunset Chinese Cultural District',
'Japantown Cultural District',
'Castro LGBTQ Cultural District',
'SOMA Pilipinas Cultural District'
)
GROUP BY cultural_districts
ORDER BY artworks_total DESC;

SELECT * FROM artworks_per_cultural_district;

-- Common Table Expressions (CTEs)

-- Returns possible values for medium:
SELECT DISTINCT medium
FROM art_collection;

WITH location_medium AS (
    SELECT
        display_title,
		analysis_neighborhood,
        medium,
        COUNT(*) AS total_artworks
    FROM art_collection
    GROUP BY analysis_neighborhood, medium, display_title
)
SELECT * 
FROM location_medium
WHERE medium LIKE '%concrete%'
ORDER BY total_artworks DESC;

-- CASE Statements:

--Categorize artworks by medium, group by artist and category

SELECT artist, 
    CASE 
        WHEN medium LIKE '%print%' OR medium LIKE '%paint%' THEN 'Visual Arts'
        WHEN medium LIKE '%concrete%' OR medium LIKE '%glass%' OR medium LIKE '%tile%' OR medium LIKE '%mosaic%' THEN '3D Art'
        ELSE 'Other'
    END AS art_category,
    COUNT(*) AS total_artworks
FROM art_collection
GROUP BY artist, art_category
ORDER BY total_artworks DESC;

-- Data Normalization: 

-- Artists Table:
CREATE TABLE artists (
    artist_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    artist_group BOOLEAN DEFAULT FALSE
);

-- Artwork Table:
CREATE TABLE artworks (
    artwork_id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    medium TEXT,
    media_support TEXT,
    dimensions TEXT,
    creation_date TEXT,
    accession_number TEXT UNIQUE,
    credit_line TEXT
);

--Locations Table:
CREATE TABLE locations (
    location_id SERIAL PRIMARY KEY,
    street_address_or_intersection TEXT,
    location_description TEXT,
    current_location TEXT,
    longitude DOUBLE PRECISION,
    latitude DOUBLE PRECISION,
    zip_code TEXT,
    analysis_neighborhood TEXT,
    cultural_districts TEXT,
    supervisor_district INTEGER,
    number_of_districts INTEGER
);

--Facilities Table:
CREATE TABLE facilities (
    facility_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    location_id INTEGER REFERENCES locations(location_id)
);

--Artwork_Artist Table:
CREATE TABLE artwork_artist (
    artwork_id INTEGER REFERENCES artworks(artwork_id),
    artist_id INTEGER REFERENCES artists(artist_id),
    PRIMARY KEY (artwork_id, artist_id)
);

--Artwork_Location Table:
CREATE TABLE artwork_location (
    artwork_id INTEGER REFERENCES artworks(artwork_id),
    location_id INTEGER REFERENCES locations(location_id),
    PRIMARY KEY (artwork_id, location_id)
);

-- Populate tables:
INSERT INTO artists (name, artist_group)
SELECT DISTINCT artist_1 AS name, FALSE AS artist_group
FROM art_collection
WHERE artist_1 IS NOT NULL
UNION
SELECT DISTINCT artist_2 AS name, FALSE AS artist_group
FROM art_collection
WHERE artist_2 IS NOT NULL
UNION
SELECT DISTINCT artist_3 AS name, FALSE AS artist_group
FROM art_collection
WHERE artist_3 IS NOT NULL
UNION
SELECT DISTINCT artist_4 AS name, FALSE AS artist_group
FROM art_collection
WHERE artist_4 IS NOT NULL;

UPDATE artists
SET artist_group = TRUE
WHERE name IN (
    SELECT DISTINCT artist
    FROM art_collection
    WHERE POSITION(' and ' IN artist) > 0
);

INSERT INTO locations (
    street_address_or_intersection,
    location_description,
    current_location,
    longitude,
    latitude,
    zip_code,
    analysis_neighborhood,
    cultural_districts,
    supervisor_district,
    number_of_districts
)
SELECT DISTINCT
    street_address_or_intersection,
    location_description,
    current_location,
    longitude,
    latitude,
    zip_code,
    analysis_neighborhood,
    cultural_districts,
    supervisor_district,
    number_of_districts
FROM art_collection;

INSERT INTO artworks (
    title,
    medium,
    media_support,
    dimensions,
    creation_date,
    accession_number,
    credit_line
)
SELECT DISTINCT
    display_title AS title,
    medium,
    media_support,
    display_dimensions AS dimensions,
    creation_date,
    accession_number,
    credit_line
FROM art_collection;

INSERT INTO facilities (name, location_id)
SELECT DISTINCT 
    facility,
    l.location_id
FROM art_collection ac
JOIN locations l ON 
    ac.street_address_or_intersection = l.street_address_or_intersection;

INSERT INTO artwork_artist (artwork_id, artist_id)
SELECT DISTINCT
    a.artwork_id,
    ar.artist_id
FROM art_collection ac
JOIN artworks a ON ac.display_title = a.title
JOIN artists ar ON ac.artist_1 = ar.name
WHERE ac.artist_1 IS NOT NULL
UNION
SELECT DISTINCT
    a.artwork_id,
    ar.artist_id
FROM art_collection ac
JOIN artworks a ON ac.display_title = a.title
JOIN artists ar ON ac.artist_2 = ar.name
WHERE ac.artist_2 IS NOT NULL
UNION
SELECT DISTINCT
    a.artwork_id,
    ar.artist_id
FROM art_collection ac
JOIN artworks a ON ac.display_title = a.title
JOIN artists ar ON ac.artist_3 = ar.name
WHERE ac.artist_3 IS NOT NULL
UNION
SELECT DISTINCT
    a.artwork_id,
    ar.artist_id
FROM art_collection ac
JOIN artworks a ON ac.display_title = a.title
JOIN artists ar ON ac.artist_4 = ar.name
WHERE ac.artist_4 IS NOT NULL;

INSERT INTO artwork_location (artwork_id, location_id)
SELECT DISTINCT 
    a.artwork_id,
    l.location_id
FROM art_collection ac
JOIN artworks a ON ac.display_title = a.title
JOIN locations l ON 
    ac.street_address_or_intersection = l.street_address_or_intersection;

-- Verify data:
SELECT * FROM artists;

SELECT * FROM artworks;

SELECT * FROM locations;

SELECT * FROM facilities;

SELECT * FROM artwork_artist;

SELECT * FROM artwork_location;

-- Joins: 

-- Aliases: art = artworks ; a = artists ; aa = artwork_artist ; 
-- al = artwork_loation ; l = locations ; f = facilities

-- Inner join: select all artworks and their corresponding artists in 2004
SELECT DISTINCT art.title, art.creation_date, a.name
FROM artworks art
JOIN artwork_artist aa ON art.artwork_id = aa.artwork_id
JOIN artists a ON a.artist_id = aa.artist_id
WHERE creation_date = '2004';

-- Left join: artworks with artists
SELECT DISTINCT art.title, art.creation_date
FROM artworks art
LEFT JOIN artwork_artist aa ON art.artwork_id = aa.artwork_id
WHERE aa.artist_id IS NOT NULL;

-- Right join: artworks in a specific neighborhood with no artist
SELECT DISTINCT art.title, art.creation_date
FROM artworks art
RIGHT JOIN artwork_artist aa ON art.artwork_id = aa.artwork_id
INNER JOIN artwork_location al ON art.artwork_id = al.artwork_id
INNER JOIN locations l ON al.location_id = l.location_id
WHERE l.analysis_neighborhood = 'Tenderloin';

-- Full join: artworks and artists in a specific facility
SELECT DISTINCT art.title, a.name AS artist_name, f.name AS facilities_name
FROM artworks art
FULL JOIN artwork_artist aa ON art.artwork_id = aa.artwork_id
FULL JOIN artists a ON a.artist_id = aa.artist_id
FULL JOIN artwork_location al ON al.artwork_id = art.artwork_id
FULL JOIN facilities f ON f.location_id = al.location_id
WHERE f.name = 'Terminal 1';
