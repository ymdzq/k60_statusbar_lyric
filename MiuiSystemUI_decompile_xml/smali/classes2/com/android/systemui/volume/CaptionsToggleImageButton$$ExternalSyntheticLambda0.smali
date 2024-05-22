.class public final synthetic Lcom/android/systemui/volume/CaptionsToggleImageButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/CaptionsToggleImageButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/CaptionsToggleImageButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final perform(Landroid/view/View;)Z
    .locals 0

    .line 1
    sget p1, Lcom/android/systemui/volume/CaptionsToggleImageButton;->$r8$clinit:I

    .line 2
    iget-object p0, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/volume/CaptionsToggleImageButton;->tryToSendTapConfirmedEvent()Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method
