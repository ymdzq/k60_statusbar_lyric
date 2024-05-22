.class public final Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public lastAppearance:Ljava/lang/Integer;

.field public lastAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field public lastLetterboxAppearance:Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

.field public lastLetterboxes:[Lcom/android/internal/statusbar/LetterboxDetails;

.field public final letterboxBackgroundProvider:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;

.field public final lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field public statusBarBoundsProvider:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->letterboxBackgroundProvider:Lcom/android/systemui/statusbar/phone/LetterboxBackgroundProvider;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    const-string p1, "LetterboxAppearanceCalculator"

    .line 12
    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastAppearance:Ljava/lang/Integer;

    .line 2
    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    move-result p2

    .line 9
    const-class v0, Landroid/view/InsetsFlags;

    .line 10
    const-string v1, "appearance"

    .line 12
    invoke-static {v0, v1, p2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p2, 0x0

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 20
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastLetterboxes:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 26
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->lastLetterboxAppearance:Lcom/android/systemui/statusbar/phone/LetterboxAppearance;

    .line 32
    const-string v2, "\n           lastAppearance: "

    .line 34
    const-string v3, "\n           lastAppearanceRegion: "

    .line 36
    const-string v4, ",\n           lastLetterboxes: "

    .line 38
    invoke-static {v2, p2, v3, v0, v4}, Lcom/android/keyguard/event/FodQuickOpenActionEvent$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object p2

    .line 43
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v0, ",\n           lastLetterboxAppearance: "

    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string p0, "\n       "

    .line 55
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 63
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 67
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    return-void
    .line 71
.end method
