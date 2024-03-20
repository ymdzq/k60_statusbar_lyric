.class Lcom/android/settings/sound/SeekBarVolumizer$1;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sound/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sound/SeekBarVolumizer;


# direct methods
.method public static synthetic $r8$lambda$Bwi7QB4dIQLHtTizPQbXvIUlgC4(Lcom/android/settings/sound/SeekBarVolumizer$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/sound/SeekBarVolumizer$1;->lambda$onTouch$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/sound/SeekBarVolumizer;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer$1;->this$0:Lcom/android/settings/sound/SeekBarVolumizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTouch$0()V
    .locals 1

    .line 104
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer$1;->this$0:Lcom/android/settings/sound/SeekBarVolumizer;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/sound/SeekBarVolumizer;->-$$Nest$fputmIsUpdate(Lcom/android/settings/sound/SeekBarVolumizer;Z)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/settings/sound/SeekBarVolumizer$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/SeekBarVolumizer$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/sound/SeekBarVolumizer$1;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 108
    :cond_1
    iget-object p0, p0, Lcom/android/settings/sound/SeekBarVolumizer$1;->this$0:Lcom/android/settings/sound/SeekBarVolumizer;

    invoke-static {p0, p2}, Lcom/android/settings/sound/SeekBarVolumizer;->-$$Nest$fputmIsUpdate(Lcom/android/settings/sound/SeekBarVolumizer;Z)V

    :goto_0
    return p2
.end method
