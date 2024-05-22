.class public final Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$1;->this$0:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$1;->this$0:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mCurrentUserId:I

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mContentObserver:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;->onChange(Z)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method
