.class public final synthetic Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    .line 2
    sget p1, Lcom/android/systemui/screenshot/LongScreenshotActivity;->$r8$clinit:I

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->updateImageDimensions()V

    .line 6
    return-void
    .line 9
.end method
