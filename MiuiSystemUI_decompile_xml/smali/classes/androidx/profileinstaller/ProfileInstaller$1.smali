.class public final Landroidx/profileinstaller/ProfileInstaller$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/profileinstaller/ProfileInstaller$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onResultReceived(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget p0, p0, Landroidx/profileinstaller/ProfileInstaller$1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    return-void

    .line 8
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 9
    :pswitch_1
    const-string p0, ""

    .line 12
    goto :goto_1

    .line 14
    :pswitch_2
    const-string p0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    .line 15
    goto :goto_1

    .line 17
    :pswitch_3
    const-string p0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    .line 18
    goto :goto_1

    .line 20
    :pswitch_4
    const-string p0, "RESULT_PARSE_EXCEPTION"

    .line 21
    goto :goto_1

    .line 23
    :pswitch_5
    const-string p0, "RESULT_IO_EXCEPTION"

    .line 24
    goto :goto_1

    .line 26
    :pswitch_6
    const-string p0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    .line 27
    goto :goto_1

    .line 29
    :pswitch_7
    const-string p0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    .line 30
    goto :goto_1

    .line 32
    :pswitch_8
    const-string p0, "RESULT_NOT_WRITABLE"

    .line 33
    goto :goto_1

    .line 35
    :pswitch_9
    const-string p0, "RESULT_UNSUPPORTED_ART_VERSION"

    .line 36
    goto :goto_1

    .line 38
    :pswitch_a
    const-string p0, "RESULT_ALREADY_INSTALLED"

    .line 39
    goto :goto_1

    .line 41
    :pswitch_b
    const-string p0, "RESULT_INSTALL_SUCCESS"

    .line 42
    :goto_1
    const/4 v0, 0x6

    .line 44
    const-string v1, "ProfileInstaller"

    .line 45
    if-eq p1, v0, :cond_0

    .line 47
    const/4 v0, 0x7

    .line 49
    if-eq p1, v0, :cond_0

    .line 50
    const/16 v0, 0x8

    .line 52
    if-eq p1, v0, :cond_0

    .line 54
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    goto :goto_2

    .line 59
    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    .line 60
    invoke-static {v1, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :goto_2
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 66
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
    .line 72
.end method
