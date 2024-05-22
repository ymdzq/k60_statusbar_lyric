.class public final Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final active:Z

.field public final appIcon:Landroid/graphics/drawable/Drawable;

.field public final applicationName:Ljava/lang/CharSequence;

.field public final attributionLabel:Ljava/lang/CharSequence;

.field public camera:Z

.field public mic:Z

.field public final navigationIntent:Landroid/content/Intent;

.field public final packageName:Ljava/lang/String;

.field public final phoneCall:Z

.field public final proxyLabel:Ljava/lang/CharSequence;

.field public final userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/Intent;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->packageName:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->userId:I

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->applicationName:Ljava/lang/CharSequence;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->attributionLabel:Ljava/lang/CharSequence;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->proxyLabel:Ljava/lang/CharSequence;

    .line 13
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->active:Z

    .line 15
    iput-boolean p7, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->phoneCall:Z

    .line 17
    iput-object p8, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->navigationIntent:Landroid/content/Intent;

    .line 19
    iput-object p9, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 21
    iput-boolean p10, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->mic:Z

    .line 23
    iput-boolean p11, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyDialog$GroupPrivacyElement;->camera:Z

    .line 25
    return-void
    .line 27
.end method
