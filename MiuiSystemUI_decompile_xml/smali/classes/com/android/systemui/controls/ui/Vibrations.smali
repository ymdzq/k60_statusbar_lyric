.class public abstract Lcom/android/systemui/controls/ui/Vibrations;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final rangeEdgeEffect:Landroid/os/VibrationEffect;

.field public static final rangeMiddleEffect:Landroid/os/VibrationEffect;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x7

    .line 6
    const/high16 v2, 0x3f000000    # 0.5f

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    .line 9
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    .line 12
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/systemui/controls/ui/Vibrations;->rangeEdgeEffect:Landroid/os/VibrationEffect;

    .line 16
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    .line 18
    move-result-object v0

    .line 21
    const v2, 0x3dcccccd    # 0.1f

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    .line 25
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    .line 28
    move-result-object v0

    .line 31
    sput-object v0, Lcom/android/systemui/controls/ui/Vibrations;->rangeMiddleEffect:Landroid/os/VibrationEffect;

    .line 32
    return-void
    .line 34
.end method
