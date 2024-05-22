.class final Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$updateState$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.qs.footer.data.repository.UserSwitcherRepositoryImpl$currentUserName$1"
    f = "UserSwitcherRepository.kt"
    l = {
        0x62
    }
    m = "invokeSuspend$updateState"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$updateState$1;->result:Ljava/lang/Object;

    .line 2
    iget p1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$updateState$1;->label:I

    .line 4
    const/high16 v0, -0x80000000

    .line 6
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1$updateState$1;->label:I

    .line 9
    const/4 p1, 0x0

    .line 11
    invoke-static {p1, p1, p0}, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;->invokeSuspend$updateState(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method
