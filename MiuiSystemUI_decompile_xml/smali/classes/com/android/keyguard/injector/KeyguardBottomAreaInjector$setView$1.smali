.class public final Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$setView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$setView$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$setView$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$setView$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$setView$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 9
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->startButtonLayoutAnimate(ZZ)V

    .line 12
    return-void

    .line 15
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$setView$1;->this$0:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    .line 16
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->startButtonLayoutAnimate(ZZ)V

    .line 18
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 22
.end method
