.class public abstract Lcom/android/keyguard/FaceAuthReasonKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final apiRequestReasonToUiEvent:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_SWIPE_UP_ON_BOUNCER:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 2
    new-instance v1, Lkotlin/Pair;

    .line 4
    const-string v2, "Face auth due to swipe up on bouncer"

    .line 6
    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_UDFPS_POINTER_DOWN:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 11
    new-instance v2, Lkotlin/Pair;

    .line 13
    const-string v3, "Face auth triggered due to finger down on UDFPS"

    .line 15
    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_NOTIFICATION_PANEL_CLICKED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 20
    new-instance v3, Lkotlin/Pair;

    .line 22
    const-string v4, "Face auth due to notification panel click."

    .line 24
    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_QS_EXPANDED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 29
    new-instance v4, Lkotlin/Pair;

    .line 31
    const-string v5, "Face auth due to QS expansion."

    .line 33
    invoke-direct {v4, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_PICK_UP_GESTURE_TRIGGERED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 38
    new-instance v5, Lkotlin/Pair;

    .line 40
    const-string v6, "Face auth due to pickup gesture triggered when the device is awake and not from AOD."

    .line 42
    invoke-direct {v5, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    filled-new-array {v1, v2, v3, v4, v5}, [Lkotlin/Pair;

    .line 47
    move-result-object v0

    .line 50
    invoke-static {v0}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 51
    move-result-object v0

    .line 54
    sput-object v0, Lcom/android/keyguard/FaceAuthReasonKt;->apiRequestReasonToUiEvent:Ljava/util/Map;

    .line 55
    return-void
    .line 57
.end method
