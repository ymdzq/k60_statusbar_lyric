.class Lcom/android/settings/sound/HapticSeekBarPreference$1;
.super Ljava/lang/Object;
.source "HapticSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sound/HapticSeekBarPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sound/HapticSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/HapticSeekBarPreference;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/settings/sound/HapticSeekBarPreference$1;->this$0:Lcom/android/settings/sound/HapticSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 94
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {p1, v0}, Lcom/android/settings/MiuiUtils;->enableSpringBackLayout(Landroid/view/View;Z)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {p1, p2}, Lcom/android/settings/MiuiUtils;->enableSpringBackLayout(Landroid/view/View;Z)V

    :goto_0
    return p2
.end method
