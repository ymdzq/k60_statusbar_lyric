.class public Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;
.super Ljava/lang/Object;
.source "InputMethodFunctionSelectUtils.java"


# static fields
.field public static final IS_SUPPORT_FOLD_SCREEN_SETTINGS:Z

.field public static final IS_SUPPORT_TABLET_SCREEN_SETTINGS:Z

.field private static sCloudQuickPasteKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCloudQuickPasteSelectDesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sCloudQuickPasteSelectTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sCustomIme:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFunctionDesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sFunctionImageResourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sFunctionKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFunctionTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sMiddleFunctionKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionKeyList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionTitleList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionDesList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionImageResourceList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCloudQuickPasteSelectTitleList:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCloudQuickPasteSelectDesList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCloudQuickPasteKeyList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sMiddleFunctionKeyList:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCustomIme:Ljava/util/List;

    .line 79
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "zizhan"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->IS_SUPPORT_FOLD_SCREEN_SETTINGS:Z

    .line 82
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "dagu"

    .line 83
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "yunluo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "liuqin"

    .line 84
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "pipa"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    sput-boolean v1, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->IS_SUPPORT_TABLET_SCREEN_SETTINGS:Z

    .line 93
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionKeyList:Ljava/util/ArrayList;

    const-string/jumbo v1, "voice_input"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionKeyList:Ljava/util/ArrayList;

    const-string/jumbo v1, "xiaoai_input"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionKeyList:Ljava/util/ArrayList;

    const-string/jumbo v1, "switch_input_method"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionKeyList:Ljava/util/ArrayList;

    const-string v1, "clipboard_phrase"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionKeyList:Ljava/util/ArrayList;

    const-string/jumbo v1, "switch_keyboard_language"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionKeyList:Ljava/util/ArrayList;

    const-string/jumbo v1, "switch_keyboard_type"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionKeyList:Ljava/util/ArrayList;

    const-string/jumbo v1, "no_function"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionTitleList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_function_voice:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionTitleList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_function_xiaoai:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionTitleList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_function_switch:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionTitleList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_function_clipboard:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionTitleList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_function_switch_keyboard_language:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionTitleList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_function_switch_keyboard_type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionTitleList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_function_no_function:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionDesList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_function_voice_des:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionDesList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_function_xiaoai_des:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionDesList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_function_switch_des:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionDesList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_function_clipboard_des:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionDesList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_function_switch_keyboard_language_des:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionDesList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_function_switch_keyboard_type_des:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionDesList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_function_no_function_des:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionImageResourceList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$drawable;->input_method_voice_function:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionImageResourceList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$drawable;->input_method_xiaoai_function:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionImageResourceList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$drawable;->input_method_switch_function:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionImageResourceList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$drawable;->input_method_clipboard_function:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionImageResourceList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$drawable;->input_method_no_function:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCloudQuickPasteSelectTitleList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_cloud_paste_mode_red_point_title:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCloudQuickPasteSelectTitleList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_cloud_paste_mode_bubble_title:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCloudQuickPasteSelectTitleList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_cloud_paste_mode_no_title:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCloudQuickPasteSelectDesList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_cloud_paste_mode_red_point_des:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCloudQuickPasteSelectDesList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_cloud_paste_mode_bubble_des:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCloudQuickPasteSelectDesList:Ljava/util/ArrayList;

    sget v2, Lcom/android/settings/R$string;->input_method_cloud_paste_mode_no_des:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCloudQuickPasteKeyList:Ljava/util/ArrayList;

    const-string/jumbo v2, "red_point"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCloudQuickPasteKeyList:Ljava/util/ArrayList;

    const-string/jumbo v2, "pop_vew"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCloudQuickPasteKeyList:Ljava/util/ArrayList;

    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sMiddleFunctionKeyList:Ljava/util/ArrayList;

    const-string/jumbo v2, "quick_move_cursor"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sMiddleFunctionKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCustomIme:Ljava/util/List;

    const-string v1, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCustomIme:Ljava/util/List;

    const-string v1, "com.iflytek.inputmethod.miui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCustomIme:Ljava/util/List;

    const-string v1, "com.baidu.input_mi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 325
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "clickKey"

    .line 326
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "clickValue"

    .line 327
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "recordKey"

    .line 328
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "tip"

    .line 329
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils$1;

    invoke-direct {p2, p0, v0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils$1;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static addLanguageSettingsRecord(Landroid/content/Context;)V
    .locals 3

    const-string v0, "expose"

    const-string v1, "585.2.0.1.25973"

    const-string v2, ""

    .line 412
    invoke-static {p0, v2, v2, v0, v1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addLanguageSettingsRecord(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "click"

    const-string v1, "585.2.0.1.25974"

    const-string v2, "click_content"

    .line 423
    invoke-static {p0, v2, p1, v0, v1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addMiuiBottomEnableRecord(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "fullscreen_keyboard_enable"

    const-string v1, ""

    const-string v2, "click"

    .line 320
    invoke-static {p0, v2, p1, v0, v1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addSettingsRecord(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "settings_keyboard_switch"

    const-string v1, ""

    const-string v2, "click"

    .line 310
    invoke-static {p0, v2, p1, v0, v1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->addInputMethodAnalytics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getClipboardQuickPasteEnable(Landroid/content/Context;)Z
    .locals 2

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_miui_quick_paste"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static getClipboardQuickPasteTaobaoEnable(Landroid/content/Context;)Z
    .locals 2

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_quick_paste_taobao"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getClipboardQuickPasteUrlEnable(Landroid/content/Context;)Z
    .locals 2

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_quick_paste_url"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getCloudClipboardQuickPasteMode(Landroid/content/Context;)I
    .locals 2

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "input_method_cloud_clipboard_quick_paste_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getCloudQuickPasteDesList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCloudQuickPasteSelectDesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getCloudQuickPasteEnable(Landroid/content/Context;)Z
    .locals 2

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_quick_paste_cloud"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getCloudQuickPasteKeyList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCloudQuickPasteKeyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getCloudQuickPasteTitleList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 228
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCloudQuickPasteSelectTitleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getCurrentInputMethod(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_input_method"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 351
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2f

    .line 352
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getDefaultInputMethod(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 435
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_input_method"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 438
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2f

    .line 439
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getDefaultSelectedIndex(Z)I
    .locals 1

    .line 183
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionKeyList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    const-string/jumbo p0, "switch_input_method"

    goto :goto_0

    :cond_0
    const-string p0, "clipboard_phrase"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getMiddleFunctionSelectedIndex(Landroid/content/Context;)I
    .locals 1

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "full_screen_keyboard_middle_function"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 175
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sMiddleFunctionKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 178
    :cond_0
    sget-object p0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sMiddleFunctionKeyList:Ljava/util/ArrayList;

    const-string/jumbo v0, "quick_move_cursor"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getMiddleFunctionSelectedKeyByIndex(I)Ljava/lang/String;
    .locals 1

    .line 156
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sMiddleFunctionKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getSelectedFunctionIndex(Landroid/content/Context;Z)I
    .locals 1

    .line 165
    invoke-static {p0, p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getSelectedKey(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    .line 166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    sget-object p1, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionKeyList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 169
    :cond_0
    invoke-static {p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getDefaultSelectedIndex(Z)I

    move-result p0

    return p0
.end method

.method public static getSelectedFunctionKeyByIndex(I)Ljava/lang/String;
    .locals 1

    .line 152
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sFunctionKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getSelectedKey(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "full_screen_keyboard_left_function"

    goto :goto_0

    :cond_0
    const-string p1, "full_screen_keyboard_right_function"

    :goto_0
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isEnablePrivacyInputMode(Landroid/content/Context;)Z
    .locals 2

    .line 464
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "miui_privacy_input_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private static isFullScreenDevice()Z
    .locals 4

    const/4 v0, 0x0

    .line 201
    :try_start_0
    invoke-static {v0}, Lmiui/util/CompatibilityHelper;->hasNavigationBar(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "InputMethodSettings"

    const-string v3, "get hasNavigationBar error"

    .line 203
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static isKeyBoardSkinFollowSystemDefault(Landroid/content/Context;)Z
    .locals 2

    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "keyboard_skin_follow_system_enable"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isKeyBoardSkinFollowSystemEnable(Landroid/content/Context;)Z
    .locals 2

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "keyboard_skin_follow_system_enable"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isMechKeyboardUsable(Landroid/content/Context;)Z
    .locals 5

    .line 383
    invoke-static {p0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getCurrentInputMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 384
    sget-object v1, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCustomIme:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 390
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "com.baidu.input_mi"

    .line 397
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v4, 0x292

    if-lt v1, v4, :cond_1

    return v3

    :cond_1
    const-string v1, "com.sohu.inputmethod.sogou.xiaomi"

    .line 399
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v4, 0x47f

    if-lt v1, v4, :cond_2

    return v3

    :cond_2
    const-string v1, "com.iflytek.inputmethod.miui"

    .line 402
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v0, 0x1f09

    if-lt p0, v0, :cond_3

    move v2, v3

    :cond_3
    return v2

    :catch_0
    move-exception p0

    const-string v0, "InputMethodSettings"

    const-string v1, "getPackageVersionName"

    .line 392
    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public static isMiuiImeBottomSupport()Z
    .locals 3

    const-string/jumbo v0, "ro.miui.support_miui_ime_bottom"

    const/4 v1, 0x0

    .line 209
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 210
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->isFullScreenDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static isMiuiInputMethod(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1

    .line 471
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 472
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCustomIme:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMiuiInputMethod(Ljava/lang/String;)Z
    .locals 1

    .line 428
    sget-object v0, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->sCustomIme:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSupportMechKeyboard(Landroid/content/Context;)Z
    .locals 2

    .line 365
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 369
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "miui_mechanical_keyboard_support"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isSupportedPrivacyInputMode(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 450
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getDefaultInputMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 452
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "miui_privacy_input_supported"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "privacy input"

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->getDefaultInputMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "supported"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 455
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static setPreferenceCheckedValue(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
