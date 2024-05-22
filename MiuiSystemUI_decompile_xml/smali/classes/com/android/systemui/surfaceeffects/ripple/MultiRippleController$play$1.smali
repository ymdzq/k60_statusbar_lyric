.class public final Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController$play$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $rippleAnimation:Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;

.field public final synthetic this$0:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController$play$1;->this$0:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController$play$1;->$rippleAnimation:Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController$play$1;->this$0:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;->multipleRippleView:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;->getRipples()Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController$play$1;->$rippleAnimation:Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;

    .line 10
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    return-void
    .line 15
.end method
