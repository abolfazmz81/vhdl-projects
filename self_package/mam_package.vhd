
package mam_package is

    TYPE mam_logic IS ( '0','1');    
    TYPE mam_logic_vector IS ARRAY ( NATURAL RANGE <> ) OF mam_logic;
    
    FUNCTION mamand  ( l : mam_logic; r : mam_logic ) RETURN mam_logic;
    function mamor ( l: mam_logic; r: mam_logic) return mam_logic;
    function mamxnor ( l: mam_logic; r: mam_logic) return mam_logic;

end mam_package;

package body mam_package is
    TYPE mam_logic_table IS ARRAY(mam_logic, mam_logic) OF mam_logic;

    constant mamand_table : mam_logic_table := (
--      0  | 1   
    (  '0', '1'), --0
    (  '1', '1')  --1
    );
    constant mamor_table : mam_logic_table := (
--     0  | 1    

    ( '0', '0'), --0
    ( '0', '1')  --1
    );
    
    constant mamxnor_table : mam_logic_table := (
--    0  | 1    

    ( '0', '1'), --0
    ( '1', '0')  --1
    );
    
    
    FUNCTION mamand( l :mam_logic; r : mam_logic ) RETURN mam_logic IS
    BEGIN
        RETURN (mamand_table(l, r));
    END mamand;
    
    FUNCTION mamor( l :mam_logic; r : mam_logic ) RETURN mam_logic IS
    BEGIN
        RETURN (mamor_table(l, r));
    END mamor;
    
    FUNCTION mamxnor( l :mam_logic; r : mam_logic ) RETURN mam_logic IS
    BEGIN
        RETURN (mamxnor_table(l, r));
    END mamxnor;
 
end mam_package;
