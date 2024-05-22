.class public final Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field public final synthetic $falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingCollector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$1;->$falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$1;->$falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 2
    check-cast p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 6
    const/4 p0, 0x0

    .line 9
    return p0
    .line 10
.end method
