/**********************************************************************
*These solidity codes have been obtained from Etherscan for extracting
*the smartcontract related info.
*The data will be used by MATRIX AI team as the reference basis for
*MATRIX model analysis,extraction of contract semantics,
*as well as AI based data analysis, etc.
**********************************************************************/
pragma solidity ^0.4.19;

contract Ownable {

  /**
   * @dev set `owner` of the contract to the sender
   */
  address public owner = msg.sender;

  /**
   * @dev Throws if called by any account other than the owner.
   */
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  /**
   * @dev Allows the current owner to transfer control of the contract to a newOwner.
   * @param newOwner The address to transfer ownership to.
   */
  function transferOwnership(address newOwner) public onlyOwner {
    require(newOwner != address(0));      
    owner = newOwner;
  }

}

contract Investors is Ownable {

    // investors
    /*
        "0x418155b19d7350f5a843b826474aa2f7623e99a6","0xbeb7a29a008d69069fd10154966870ff1dda44a0","0xa9cb1b8ba1c8facb92172e459389f80d304595a3","0xf3f2bf9be0ccc8f27a15ccf18d820c0722e8996a","0xa0f36ac9f68c1a4594ef5cec29dc9b1cc67f822c","0xc319278cca404e3a479b088922e4117feb4cec9d","0xe633c933529d6fd7c6147d2b0dc51bfbe3304e56","0x5bd2c1f2f06b16e427a4ec3a6beef6263fd506da","0x52c4f101d0367c3f9933d0c14ea389e74ad00352","0xf7a0d2149f324a0b607ebf23df671acc4e9da6d2", "0x0418df662bb2994262bb720d477e558a59e19490","0xf0de6520e0726ba3d84611f84867aa9987391402","0x1e895274a9570f150f11ae0ed86dd42a53208b81","0x95a247bef71f6b234e9805d1493366a302a498e4","0x9daaeaf355f69f7176a0145df6d1769d7f14553b","0x029136181d87c6f0979431255424b5fad78e8491","0x7e1f5669d9e1c593a495c5cec384ca32ad4a09fc","0x46c7e04fdaaa1a9298e63ca2fd47b0004cb236bf","0x5933fa485863da06584057494f0f6660d3c1477c","0x4290231804dd59947aff9fcef925287e44906e7b", "0x2feaf2101b3f9943a81567badb56e3780946ce3f","0x5b602c34ba643913908f69a4cd5846a07ed3915b","0x146308896955030ce3bcc6030bab142afddaa1e6","0x9fc61b75451fabf5b5b78e03bacaf8bb592541fc","0x87f7636f7856466b6c6bce999574a784387e2b78","0x024db1f560327ab5174f1a737caf446b5644c709","0x715c248e621cbdb6f091bf653bb4bc331d2f9b1e","0xfe92a23b497140ba055a91ade89d91f95f8e5153","0xc3426e0e0634725a628a7a21bfd49274e1f24733","0xb12a79b9dba8bbb9ed5e329466a9c2703da38dbd","0x44d8336749ebf584a4bcd636cefe83e6e0b33e7d","0x89c91460c3bdc164250e5a27351c743c070c226a","0xe0798a1b847f450b5d4819043d27a380a4715af8","0xeac5e75252d902cb7f8473e45fff9ceb391c536b","0xea53e88876a6da2579d837a559b31b08d6750681","0x5df22fac00c45ef7b5c285c54a006798f42bbc6e","0x09899f20064b5e67d02f6a97ef412564977ee193","0xc572f18d0a4a65f6e612e6de484dbc15b8839df3","0x397b9719e720c0d33fe7dcc004958e56636cbf82","0x577de83b60299df60cc7fce7ac78d3a5d880aa95", "0x9a716298949b16c4610b40ba1d19e96d3286c35c","0x60ef523f3845e38a20b63344a4e9ec689773ead6","0xe34252e3efe0514c5fb76c9fb39ff31f554d6659","0xbabfbdf4f422d36c00e448cc562ce0f5dbe47d64","0x2608cca4aff4cc3008ac6bd22e0664348ecee088","0x0dd1d3102f89d4ee7c260048cbe01933f17debde","0xdbb28fafc4ecd7736247aca7dc8e20782ca86a7a","0x6201fc413bb9292527956a70e7575436d5135ce1","0xa836f4cfb8fd3e5bccc9c7a6a678f2a5928b7c79","0x85dce799fd059d86c420eb4e3c1bd89e323b7b12","0xdef2086c6bbdc8b0f6e130907f05345b44af8cc3","0xc1004695ce07ef5efb1d218672e5cfcb659c5900","0x227a5b4bb4cffc2b907d9f586dd100989efeee56","0xd372b3d43ba8ea406f64dbc68f70ec812e54fbc8","0xdf6c417cdb27bc0c877a0e121a2c58ad884e85c6","0x090f4d53b5d7ebcb8e348709cdb708d80cd199f0","0x2499b302b6f5e57f54c1c7a326813e3dffddcd1a","0x3114024a034443e972707522d911fc709f62dd3e","0x30b864f49cef510b1173a5bfc31e77b0b59daf9e","0x9a9680f5ddee6cef96ef36ab506f4b6d3198c35e","0x08018337b9b138b631cd325168c3d5014df6e18b","0x2ac345a4ec1615c3a236099ebbed4911673bbfa5","0x2b9fd54828cd443b7c411419b058b44bd02fdc49","0x208713a63460d44e5a83ae8e8f7333496a05065e","0xe4052eb7ba8891ee7ccd7551faaa5f4c421904e7","0x74bc9db1ac813db06f771bcff359e9237b01c906","0x033dd047a042ea873ca27af36b64ca566a006e97","0xb4721808a3f2830a1708967302443b53f5943429","0xc91fbb815c2f4944d8c6846be6ac0e30f5a037df","0x19ef947c276436ac11a8be15567909a37d824e73","0x079eefd69c5a4c5e4c9ee3fa08c2a2964da3e11a","0x11fb64be296590f948d56daab6c2d102c9842b08","0x06ec97feaeb0f4b9a75f9671d6b62bfadaf18ddd","0xaeda3cff45032695fb2cf4f584cda822bd5d8b7e","0x9f377085d3da85107cd68bd08bdd9a1b862d44e0","0xb46b8d1c313c52fd422fe189dde1b4d0800a5e0f","0x99039fa34510c7321f4d19ea337c80cc14cc885d","0x378aba0f47c7790ed0e5ca61749b0025d1208a5d","0x4395e1db93d4e2f4583a4f87494eb0aea057b8fd","0xa4035578750564e48abfb5ba1d6eec1da1bf366f","0xb611b39eb6c16dae3754e514ddd5f02fcadd765f","0x67d41491ddc004e899a3faf109f526cd717fe6d8","0x58e2c10865f9a1668e800c91b6a3d7b3416fb26c","0x04e34355ced9d532c9bc01d5e569f31b6d46cd50","0xf80358cabdc9b9b79570b6f073a861cf5567bb57","0xbdacb079fc17a00d945f01f4f9bd5d03cfcd5b6c","0x387a723060bc42a7796c76197d2d3b41b4c43d19","0xa04cc8fc56c34ab8104f63c11bf211de4bb7b0aa","0x3bf8b5ede7501519d41792715215735d8f40af10","0x6c3a13bac5cf61b1927562a927e89ca6b5d034d6","0x9899aecef15de43eec04859be649ac4c50330886","0xa4d25bac971ca08b47a908a070b6362102206c12",
        "0xf88d963dc3f58fe6e71879543e57734e8152f70d","0x7b30a000f7ae56ee6206cbd9fb20c934b4bbb5d1","0xb2f0e5330e90559a738eda0df156635e18a145fd","0x5b2c07b6cce506f2293f1b32dc33d9928b8c9ada","0x5a967c0e38cb3bfad90df288ce238699cc47b5e3","0x0e686d6f3c897cae3984b80b5f6a7c785c708718","0xa8ea0b6bc70502644c0644fb4c0810540a1fa261","0xc70e278819ef5aec6b3ededc21e2981557e14443","0x477b5ae32ffcd34eb25f0c52866d4f602982dc6f","0x3e72a45fbc6a0858b506a0c7bedff79af75ae37c","0x1430e272a50703ef46d8ed5aa01e1ced71245341","0xc87d0bb90a6105a66fd5105c6746218d381b8207","0x0ed7f98b6177d0c15e27704f2bae4d068b8594d5","0x09a627b57879eb625cd8b7c59ffa363222553c23","0x0fdbc41046590ef7ee2a73b9808fd5bd7e189ac4","0x6a4b68af67a3b4a98fe1a59210dd3d775e567729","0x442a3daf774329fee3e904e86ddec1191f4be3ce","0x9efa8fe7fa51c8b36ab902046f879b035520f556","0x510e8e58b8ce4acaa6866e59dfc0fa339ea358e5","0x374831251283aa63aee6506ac6580479aaf3c22b","0xf758c498d020c0b92f2116d09d7ef6509c2c71bd","0xd83e8281ffcfb0ff96236e99ba66aabb8dcc7920","0x3670c3a5e65b757db8c82b12dd92057ac19d41fa","0xfd28eb7e3e5e3406ce6b82045d487c2be294cd38","0x2d23cd492096b903e4595ccdac74e49692a6ea8e","0x94d3a0a19ed5448052c549fd1f69f54c5f1fd8c5","0x8e5354ac59cee09d252e379a3534053306022ebe","0xa66f3700dda0147c56c2970202768c956c644ffd","0xf11d32baef6221f36916c58844cd8e9813c0af47","0x384a9bc1de23b36c2a23b963e57c8cd85b0d592c","0xbd00dfbaaa1abaa7948c7b2a6bed6e644293cc1c","0xa99a28afcbd4ab09a2ef2c0932becd0368225ee6","0xe554084d77bc6e510eed7276cb6033865375b669","0xe7582fa53531915a2fef5a81b98969d0091d8d44","0x5f15db1d209fa6fd3c667fb086d3d89e3793511f","0x7e9ff5348d57d3427e24b7e104ad5acf039edaf2","0xb4fb1a01483454d75a0cdfa983b99236c4c91111","0x4a7cc5eebfe019efab06c1fa9ae8453dc63ba84e","0xb6fc08d5043b51ac05cdbd88afaab0e4422762d0","0xb18365f4f1e95287a5f85c8a67cebee9e6164c31","0xaf575cfb94d65eaeaace749868282d0e26e4608a","0x3d07e5ff3a2d29ee17584dff60cc99bb4cd79c3d","0x08f0afc93fbc8188150f4bcab004e259cd4785aa","0x65ac3ed81f101e5651c72c4cc2d74650378b5b0c","0x58aef4fc6b54cb53683a6481655021109b8d4dce","0x6aa43e24604577574a0632524a1f4c21d70a61e2","0xbee55aa5ad9953294ecac83a6b62f10c8155444b","0x99dc885ac6ec9873e2409d5a31e7f525c1897e09","0x53a0622034680d64bd0f139df5e989d70b194a4d","0xa6ba4966f1fdd0e8560516e53490b25cf0c4fbd1","0xbd1b95ee4621ecda41961da61277e17e52f37dbf","0xf6481b881eea526ae36cbe11d58d641f96f04a77","0xd158d53d75eac0dda9d2dedf3418d071a2fd44ee","0xb22697e3f33544da7782c8197d07704e1906a3bf","0xa3237e67df409dca45930c1f5f671251adc202be","0x72b26f2dded753a01f391322b00f9a85a77c7fda","0x203fbf3a77bdf35f7aca220b363272896db91d57","0xb1be2f4d72eb87dfcf7ed93c8ec16e4040e52560","0xc60d8a0313ede22194ebe6285471f72f9bcdcda0","0x9888e7423ea48413a4c90a10c76ca5f90d065e1f","0x0be856768ad0ec5b45464ce5202e2c337224cebf","0x3b54ea00a74b116510c4f73a3fc19a62991aaf64","0xe72aa06ffe7058f73622f219af164369c03e3a41","0x7e71fada017d9af455f38db4957d527f51fe1bc5","0x78430e58934220f37ca6b9dbe622f076ad0eb3f5","0x46b55dd1c8187f17b659948a991adac7b426b71e","0x0c765e201bb43d49ab5b44d40d3cf1d219424821","0x4739d251b40028761bbd8034a21919d926f23b45","0x00a7c7bc71022032f6ef3f699b212c9450875740","0x0d4f50b0d43d34a163b8dd7c33fbcc92a19cfa59","0x9284fbc0cc35d9b835de2b00b6b7093075527f6b","0x3564e101b32fe5f3c99e8da823ac003373c26d33","0xf5a358f228dc964fa7c703cb6ad9f6002ce77b17","0x8297a09b5dac9e60896c787f0995ac06441ab14f","0xed8c9b4fd60a6e4ae66c38f5819cffb360af5dd5","0x23009de4ec4a666ba719656d844e42e264e14c6b","0x63227f4492c6bbd9e1015f2c864a31eef1465cd3","0xf3e0ec409386ea202b15d97bb8dd2d131917e3b1","0x981154fafb3a5aeee43d984ee255e5121ce79790","0x49a4598cdf112b5848c11c465d39989fcb5cb6c1","0x575ca03f00f9e5566d85dc095165998953ab0753","0x09d87f2979c4ac6c9d4077d1f5d94cb9aadf43ca","0x0b4575867757b3982379f4d05c92fd2d019247a0","0x8c666d40e2ac961885d675e58e3115b859dac6c1","0x34a3401ebe8431d44efee9948c4b641142407aa8","0x1683512dbcce189ea6042862a2ba4abd4886623b","0x72d45f733336f6f03ef20c1ad4f51ff6b7f90186","0x569fe010fe2d40037c029537eef78aa9b0e018f9","0x061def9fab3aee4161711d4c040d138a273893b5","0xe77e2ae67e1152425c75ff56291d03d92f5d3cad","0x93ebdeb0b0c967f5cc1a10f481569e1871b7d7cd","0x6d7910f900fc3e3f2e2b6d5d8aad43bc6a232685",
        "0xb16e28be300f579a81f2b80fdd5a95cf168bf3a4", "0xd69835daeee01601ea991efe9fd0309c64c07d42", "0x30b45ed69250a160ee91dadab2986d21626d7f4b", "0xd28075489da5f9ef51bcc61668c114296a8e8603"
    */
    address[] public investors;

    // investor address => percentage * 10^(-2)
    /*
        3313,1500,510,462,453,302,250,250,226,220,150,129,100,100,60,55,50,50,50,50,50,50,50,50,50,40,40,30,27,26,25,25,25,25,25,25,25,25,23,20,15,15,15,15,15,15,14,14,13,13,13,13,12,12,11,11,11,11,11,11,10,10,10,10,10,10,10,10,10,9,9,8,8,8,8,7,6,6,6,6,6,6,6,6,6,6,6,6,6,5,5,5,
        5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,4,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,1,
        6,6,125,50
    */
    mapping (address => uint) public investorPercentages;


    /**
     * @dev Add investors
     */
    function addInvestors(address[] _investors, uint[] _investorPercentages) onlyOwner public {
        for (uint i = 0; i < _investors.length; i++) {
            investors.push(_investors[i]);
            investorPercentages[_investors[i]] = _investorPercentages[i];
        }
    }


    /**
     *  @dev Get investors count
     *  @return uint count
     */
    function getInvestorsCount() public constant returns (uint) {
        return investors.length;
    }


    /**
     *  @dev Get investors' fee depending on the current year
     *  @return uint8 The fee percentage, which investors get
     */
    function getInvestorsFee() public constant returns (uint8) {
        //01/01/2020
        if (now >= 1577836800) {
            return 1;
        }
        //01/01/2019
        if (now >= 1546300800) {
            return 5;
        }
        return 10;
    }

}