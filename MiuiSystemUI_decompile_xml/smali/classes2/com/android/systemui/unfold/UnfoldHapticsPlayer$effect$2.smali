.class final Lcom/android/systemui/unfold/UnfoldHapticsPlayer$effect$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/unfold/UnfoldHapticsPlayer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldHapticsPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer$effect$2;->this$0:Lcom/android/systemui/unfold/UnfoldHapticsPlayer;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x7

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    .line 9
    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer$effect$2;->this$0:Lcom/android/systemui/unfold/UnfoldHapticsPlayer;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const-string v2, "persist.unfold.primitives_count"

    .line 18
    const-string v4, "18"

    .line 20
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 25
    invoke-static {}, Lkotlin/text/CharsKt__CharKt;->checkRadix()V

    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 29
    move-result v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    goto :goto_2

    .line 35
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 36
    move-result v5

    .line 39
    const/16 v6, 0x30

    .line 40
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 42
    move-result v6

    .line 45
    const v7, -0x7fffffff

    .line 46
    if-gez v6, :cond_3

    .line 49
    const/4 v6, 0x1

    .line 51
    if-ne v4, v6, :cond_1

    .line 52
    goto :goto_2

    .line 54
    :cond_1
    const/16 v8, 0x2d

    .line 55
    if-ne v5, v8, :cond_2

    .line 57
    const/high16 v7, -0x80000000

    .line 59
    move v5, v6

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/16 v8, 0x2b

    .line 63
    if-ne v5, v8, :cond_6

    .line 65
    move v5, v3

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    move v5, v3

    .line 69
    move v6, v5

    .line 70
    :goto_0
    const v8, -0x38e38e3

    .line 71
    move v9, v3

    .line 74
    move v10, v8

    .line 75
    :goto_1
    if-ge v6, v4, :cond_8

    .line 76
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    .line 78
    move-result v11

    .line 81
    const/16 v12, 0xa

    .line 82
    invoke-static {v11, v12}, Ljava/lang/Character;->digit(II)I

    .line 84
    move-result v11

    .line 87
    if-gez v11, :cond_4

    .line 88
    goto :goto_2

    .line 90
    :cond_4
    if-ge v9, v10, :cond_5

    .line 91
    if-ne v10, v8, :cond_6

    .line 93
    div-int/lit8 v10, v7, 0xa

    .line 95
    if-ge v9, v10, :cond_5

    .line 97
    goto :goto_2

    .line 99
    :cond_5
    mul-int/lit8 v9, v9, 0xa

    .line 100
    add-int v12, v7, v11

    .line 102
    if-ge v9, v12, :cond_7

    .line 104
    :cond_6
    :goto_2
    const/4 v2, 0x0

    .line 106
    goto :goto_3

    .line 107
    :cond_7
    sub-int/2addr v9, v11

    .line 108
    add-int/lit8 v6, v6, 0x1

    .line 109
    goto :goto_1

    .line 111
    :cond_8
    if-eqz v5, :cond_9

    .line 112
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    move-result-object v2

    .line 117
    goto :goto_3

    .line 118
    :cond_9
    neg-int v2, v9

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v2

    .line 123
    :goto_3
    if-eqz v2, :cond_a

    .line 124
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 126
    move-result v2

    .line 129
    goto :goto_4

    .line 130
    :cond_a
    const/16 v2, 0x12

    .line 131
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer$effect$2;->this$0:Lcom/android/systemui/unfold/UnfoldHapticsPlayer;

    .line 133
    move v5, v3

    .line 135
    :goto_5
    if-ge v5, v2, :cond_c

    .line 136
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    const-string v6, "persist.unfold.haptics_scale"

    .line 141
    const-string v7, "0.1"

    .line 143
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    move-result-object v6

    .line 148
    invoke-static {v6}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    .line 149
    move-result-object v6

    .line 152
    if-eqz v6, :cond_b

    .line 153
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 155
    move-result v6

    .line 158
    goto :goto_6

    .line 159
    :cond_b
    const v6, 0x3dcccccd    # 0.1f

    .line 160
    :goto_6
    const/16 v7, 0x8

    .line 163
    invoke-virtual {v0, v7, v6, v3}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    .line 165
    add-int/lit8 v5, v5, 0x1

    .line 168
    goto :goto_5

    .line 170
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldHapticsPlayer$effect$2;->this$0:Lcom/android/systemui/unfold/UnfoldHapticsPlayer;

    .line 171
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    const-string p0, "persist.unfold.haptics_scale_end_tick"

    .line 176
    const-string v2, "0.6"

    .line 178
    invoke-static {p0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    move-result-object p0

    .line 183
    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    .line 184
    move-result-object p0

    .line 187
    if-eqz p0, :cond_d

    .line 188
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 190
    move-result p0

    .line 193
    goto :goto_7

    .line 194
    :cond_d
    const p0, 0x3f19999a    # 0.6f

    .line 195
    :goto_7
    invoke-virtual {v0, v1, p0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    .line 198
    move-result-object p0

    .line 201
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    .line 202
    move-result-object p0

    .line 205
    return-object p0
    .line 206
.end method
