.class public final Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$2;->this$0:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAccessibilityServicesStateChanged(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$2;->this$0:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;

    .line 2
    sget v0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->$r8$clinit:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    .line 6
    return-void
    .line 9
.end method
