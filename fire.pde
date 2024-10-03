void fire() {
  if ((nowW == 1 && A1 > 0) || (nowW == 2 && A2 > 0)) {
    if (nowW == 1) {
      A1--;
    } else if (nowW == 2) {
      A2--;
    }
    //1번 2번 무기 사격시
    crh += 2;
    if (crh > 30) {
      crh = 30;//크로스헤어 확장 그러나 크기제한
    }
    
    actionflame = frameCount; //마지막 행동 프레임
  }
}
