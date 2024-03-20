.class public final Lcom/android/systemui/statusbar/phone/LetterboxAppearance;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final appearance:I

.field public final appearanceRegions:[Lcom/android/internal/view/AppearanceRegion;


# direct methods
.method public constructor <init>(I[Lcom/android/internal/view/AppearanceRegion;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;->appearance:I

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;->appearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-class v0, Landroid/view/InsetsFlags;

    .line 2
    const-string v1, "appearance"

    .line 4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;->appearance:I

    .line 6
    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearance;->appearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 12
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    const-string v1, "LetterboxAppearance{"

    .line 18
    const-string v2, ", "

    .line 20
    const-string/jumbo v3, "}"

    .line 22
    invoke-static {v1, v0, v2, p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    return-object p0
    .line 29
.end method
