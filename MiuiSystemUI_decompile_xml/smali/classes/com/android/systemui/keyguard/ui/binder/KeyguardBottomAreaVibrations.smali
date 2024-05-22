.class public abstract Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final Activated:Landroid/os/VibrationEffect;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    sget v0, Lkotlin/time/Duration;->$r8$clinit:I

    .line 2
    const/16 v0, 0x12c

    .line 4
    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 6
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 8
    move-result-wide v0

    .line 11
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    .line 12
    move-result-object v2

    .line 15
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    .line 16
    move-result-wide v0

    .line 19
    long-to-float v0, v0

    .line 20
    const/high16 v1, 0x41200000    # 10.0f

    .line 21
    div-float/2addr v0, v1

    .line 23
    float-to-int v0, v0

    .line 24
    const/4 v1, 0x0

    .line 25
    move v3, v1

    .line 26
    :goto_0
    const/16 v4, 0xa

    .line 27
    const/4 v5, 0x7

    .line 29
    if-ge v3, v4, :cond_0

    .line 30
    const v4, 0x3e99999a    # 0.3f

    .line 32
    invoke-virtual {v2, v5, v4, v0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    .line 41
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    .line 44
    move-result-object v0

    .line 47
    const v2, 0x3f19999a    # 0.6f

    .line 48
    invoke-virtual {v0, v5, v2, v1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    .line 51
    move-result-object v0

    .line 54
    const/4 v3, 0x4

    .line 55
    const v4, 0x3dcccccd    # 0.1f

    .line 56
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    .line 59
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    .line 63
    move-result-object v0

    .line 66
    sput-object v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaVibrations;->Activated:Landroid/os/VibrationEffect;

    .line 67
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    .line 69
    move-result-object v0

    .line 72
    invoke-virtual {v0, v5, v2, v1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    .line 73
    move-result-object v0

    .line 76
    const/4 v2, 0x6

    .line 77
    invoke-virtual {v0, v2, v4, v1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    .line 78
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    .line 82
    return-void
    .line 85
.end method
