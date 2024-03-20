.class Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference$1;
.super Ljava/lang/Object;
.source "MiuiPointSpeedSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference$1;->this$0:Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p1, v0}, Lcom/android/settings/MiuiUtils;->enableSpringBackLayout(Landroid/view/View;Z)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {p1, p2}, Lcom/android/settings/MiuiUtils;->enableSpringBackLayout(Landroid/view/View;Z)V

    :goto_0
    return p2
.end method
