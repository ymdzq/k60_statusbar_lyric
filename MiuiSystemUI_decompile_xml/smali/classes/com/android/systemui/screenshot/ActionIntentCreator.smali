.class public final Lcom/android/systemui/screenshot/ActionIntentCreator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/screenshot/ActionIntentCreator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/screenshot/ActionIntentCreator;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/screenshot/ActionIntentCreator;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/screenshot/ActionIntentCreator;->INSTANCE:Lcom/android/systemui/screenshot/ActionIntentCreator;

    .line 7
    return-void
    .line 9
.end method

.method public static createShareIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    const-string v1, "android.intent.action.SEND"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v1, "image/png"

    .line 9
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    const-string v1, "android.intent.extra.STREAM"

    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16
    new-instance v1, Landroid/content/ClipData;

    .line 19
    new-instance v2, Landroid/content/ClipDescription;

    .line 21
    const-string/jumbo v3, "text/plain"

    .line 23
    filled-new-array {v3}, [Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 29
    const-string v4, "content"

    .line 30
    invoke-direct {v2, v4, v3}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 32
    new-instance v3, Landroid/content/ClipData$Item;

    .line 35
    invoke-direct {v3, p0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 37
    invoke-direct {v1, v2, v3}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 43
    const-string p0, "android.intent.extra.SUBJECT"

    .line 46
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string p0, "android.intent.extra.TEXT"

    .line 51
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const/4 p0, 0x1

    .line 56
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    const/4 p1, 0x2

    .line 60
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    const/4 p1, 0x0

    .line 64
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 65
    move-result-object p1

    .line 68
    const p2, 0x8000

    .line 69
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    move-result-object p1

    .line 75
    const/high16 p2, 0x10000000

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    move-result-object p1

    .line 81
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    move-result-object p0

    .line 85
    return-object p0
    .line 86
.end method
