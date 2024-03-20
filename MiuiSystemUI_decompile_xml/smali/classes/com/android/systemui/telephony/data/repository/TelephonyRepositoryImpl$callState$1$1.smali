.class final Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl$callState$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $listener:Landroid/telephony/TelephonyCallback$CallStateListener;

.field final synthetic this$0:Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl$callState$1$listener$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl$callState$1$1;->this$0:Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl$callState$1$1;->$listener:Landroid/telephony/TelephonyCallback$CallStateListener;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl$callState$1$1;->this$0:Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;->manager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl$callState$1$1;->$listener:Landroid/telephony/TelephonyCallback$CallStateListener;

    .line 6
    iget-object v1, v0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    .line 8
    iget-object v1, v1, Lcom/android/systemui/telephony/TelephonyCallback;->mCallStateListeners:Ljava/util/List;

    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/telephony/TelephonyListenerManager;->updateListening()V

    .line 17
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    return-object p0
    .line 22
.end method
