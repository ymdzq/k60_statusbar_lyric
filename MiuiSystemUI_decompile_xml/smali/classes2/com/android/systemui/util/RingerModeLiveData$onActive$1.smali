.class public final Lcom/android/systemui/util/RingerModeLiveData$onActive$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/util/RingerModeLiveData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/RingerModeLiveData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/RingerModeLiveData$onActive$1;->this$0:Lcom/android/systemui/util/RingerModeLiveData;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/RingerModeLiveData$onActive$1;->this$0:Lcom/android/systemui/util/RingerModeLiveData;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/util/RingerModeLiveData;->getter:Lkotlin/jvm/functions/Function0;

    .line 4
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 10
    return-void
    .line 13
.end method
