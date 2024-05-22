.class public final enum Lcom/android/systemui/privacy/PrivacyType;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/privacy/PrivacyType;

.field public static final enum TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

.field public static final enum TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

.field public static final enum TYPE_MEDIA_PROJECTION:Lcom/android/systemui/privacy/PrivacyType;

.field public static final enum TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;


# instance fields
.field private final iconId:I

.field private final logName:Ljava/lang/String;

.field private final nameId:I

.field private final permGroupName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Lcom/android/systemui/privacy/PrivacyType;

    .line 2
    const-string v1, "TYPE_CAMERA"

    .line 4
    const/4 v4, 0x0

    .line 6
    const v5, 0x7f13091b    # @string/privacy_type_camera 'camera'

    .line 7
    const v6, 0x7f081945    # @drawable/status_bar_privacy_camera 'res/drawable/status_bar_privacy_camera.xml'

    .line 10
    const-string v2, "android.permission-group.CAMERA"

    .line 13
    const-string v3, "camera"

    .line 15
    move-object v0, v7

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/privacy/PrivacyType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 18
    sput-object v7, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    .line 21
    new-instance v0, Lcom/android/systemui/privacy/PrivacyType;

    .line 23
    const-string v9, "TYPE_MICROPHONE"

    .line 25
    const/4 v12, 0x1

    .line 27
    const v13, 0x7f13091e    # @string/privacy_type_microphone 'microphone'

    .line 28
    const v14, 0x7f081947    # @drawable/status_bar_privacy_micphone 'res/drawable/status_bar_privacy_micphone.xml'

    .line 31
    const-string v10, "android.permission-group.MICROPHONE"

    .line 34
    const-string v11, "microphone"

    .line 36
    move-object v8, v0

    .line 38
    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/privacy/PrivacyType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 39
    sput-object v0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    .line 42
    new-instance v1, Lcom/android/systemui/privacy/PrivacyType;

    .line 44
    const-string v16, "TYPE_LOCATION"

    .line 46
    const/16 v19, 0x2

    .line 48
    const v20, 0x7f13091c    # @string/privacy_type_location 'location'

    .line 50
    const v21, 0x7f081946    # @drawable/status_bar_privacy_location 'res/drawable/status_bar_privacy_location.xml'

    .line 53
    const-string v17, "android.permission-group.LOCATION"

    .line 56
    const-string v18, "location"

    .line 58
    move-object v15, v1

    .line 60
    invoke-direct/range {v15 .. v21}, Lcom/android/systemui/privacy/PrivacyType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 61
    sput-object v1, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    .line 64
    new-instance v2, Lcom/android/systemui/privacy/PrivacyType;

    .line 66
    const-string v9, "TYPE_MEDIA_PROJECTION"

    .line 68
    const/4 v12, 0x3

    .line 70
    const v13, 0x7f13091d    # @string/privacy_type_media_projection 'screen recording'

    .line 71
    const v14, 0x7f08180a    # @drawable/stat_sys_cast 'res/drawable/stat_sys_cast.xml'

    .line 74
    const-string v10, "android.permission-group.UNDEFINED"

    .line 77
    const-string v11, "media projection"

    .line 79
    move-object v8, v2

    .line 81
    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/privacy/PrivacyType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 82
    sput-object v2, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MEDIA_PROJECTION:Lcom/android/systemui/privacy/PrivacyType;

    .line 85
    filled-new-array {v7, v0, v1, v2}, [Lcom/android/systemui/privacy/PrivacyType;

    .line 87
    move-result-object v0

    .line 90
    sput-object v0, Lcom/android/systemui/privacy/PrivacyType;->$VALUES:[Lcom/android/systemui/privacy/PrivacyType;

    .line 91
    return-void
    .line 93
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p5, p0, Lcom/android/systemui/privacy/PrivacyType;->nameId:I

    .line 5
    iput p6, p0, Lcom/android/systemui/privacy/PrivacyType;->iconId:I

    .line 7
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyType;->permGroupName:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/privacy/PrivacyType;->logName:Ljava/lang/String;

    .line 11
    return-void
    .line 13
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/privacy/PrivacyType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/privacy/PrivacyType;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/privacy/PrivacyType;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/privacy/PrivacyType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/privacy/PrivacyType;->$VALUES:[Lcom/android/systemui/privacy/PrivacyType;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/privacy/PrivacyType;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    iget p0, p0, Lcom/android/systemui/privacy/PrivacyType;->iconId:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 8
    move-result-object p1

    .line 11
    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method

.method public final getIconId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/privacy/PrivacyType;->iconId:I

    .line 2
    return p0
    .line 4
.end method

.method public final getLogName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyType;->logName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p1

    .line 5
    iget p0, p0, Lcom/android/systemui/privacy/PrivacyType;->nameId:I

    .line 6
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public final getNameId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/privacy/PrivacyType;->nameId:I

    .line 2
    return p0
    .line 4
.end method

.method public final getPermGroupName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyType;->permGroupName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
