//コンパイル時に使用する Solidity コンパイラのバージョンを指定
pragma solidity ^0.4.18;
//OpenZeppelin ライブラリから、ERC20 の実装クラスである StandardToken.sol をインポート
import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";


//コントラクトの宣言です。is StandardToken の部分で、MyToken が StandardToken を継承していることを表しています
contract MyToken is StandardToken {
  string public name = "MyToken";
  string public symbol = "MTKN";
  uint public decimals = 18;
//コントラクトの状態変数に値を代入。名前が "MyToken"、シンボルが "MTKN"、小数点の桁数が 18 のトークンとする



// コントラクト作成時に呼ばれるコンストラクタ。contract名と同じ名称の function がコンストラクタとなる
  function MyToken(uint initialSupply) public {
    totalSupply_ = initialSupply;
    balances[msg.sender] = initialSupply;
  }
}
//発行したトークンを、全てmsg.senderのアドレス（口座）に入れています。msg.sender は、コントラクト実行者の Ethereum アドレスを表し、balances は、アドレスをキーとした key/value 型の変数です。
