.class public final Lcom/android/systemui/keyguard/ResourceTrimmer$start$1$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/keyguard/ResourceTrimmer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/ResourceTrimmer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1$4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1$4;->this$0:Lcom/android/systemui/keyguard/ResourceTrimmer;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    const/16 v0, 0x14

    .line 4
    iget v1, p0, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1$4;->$r8$classId:I

    .line 6
    const/4 v2, 0x1

    .line 8
    const-string v3, "ResourceTrimmer"

    .line 9
    iget-object p0, p0, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1$4;->this$0:Lcom/android/systemui/keyguard/ResourceTrimmer;

    .line 11
    packed-switch v1, :pswitch_data_0

    .line 13
    goto/16 :goto_3

    .line 16
    :pswitch_0
    check-cast p1, Lkotlin/Triple;

    .line 18
    invoke-virtual {p1}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/systemui/keyguard/shared/model/WakefulnessState;

    .line 24
    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/Boolean;

    .line 30
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result v4

    .line 35
    invoke-virtual {p1}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/Boolean;

    .line 40
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    move-result p1

    .line 45
    sget-boolean v5, Lcom/android/systemui/keyguard/ResourceTrimmer;->DEBUG:Z

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    sget-object v5, Lcom/android/systemui/flags/Flags;->TRIM_RESOURCES_WITH_BACKGROUND_TRIM_AT_LOCK:Lcom/android/systemui/flags/ReleasedFlag;

    .line 51
    iget-object v6, p0, Lcom/android/systemui/keyguard/ResourceTrimmer;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 53
    check-cast v6, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 55
    invoke-virtual {v6, v5}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 57
    move-result v5

    .line 60
    if-nez v5, :cond_0

    .line 61
    goto :goto_2

    .line 63
    :cond_0
    sget-boolean v5, Lcom/android/systemui/keyguard/ResourceTrimmer;->DEBUG:Z

    .line 64
    if-eqz v5, :cond_1

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    const-string v6, "Wakefulness: "

    .line 70
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    const-string v6, " Dreaming: "

    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    const-string v6, " DozeAmount: "

    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {v5, p1, v3}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 91
    :cond_1
    sget-object v5, Lcom/android/systemui/keyguard/shared/model/WakefulnessState;->ASLEEP:Lcom/android/systemui/keyguard/shared/model/WakefulnessState;

    .line 94
    const/4 v6, 0x0

    .line 96
    if-ne v1, v5, :cond_2

    .line 97
    if-nez v4, :cond_2

    .line 99
    move v7, v2

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    move v7, v6

    .line 103
    :goto_0
    if-ne v1, v5, :cond_3

    .line 104
    if-eqz v4, :cond_3

    .line 106
    if-eqz p1, :cond_3

    .line 108
    goto :goto_1

    .line 110
    :cond_3
    move v2, v6

    .line 111
    :goto_1
    if-nez v7, :cond_4

    .line 112
    if-eqz v2, :cond_5

    .line 114
    :cond_4
    const-string p1, "ResourceTrimmer#trimMemory"

    .line 116
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 118
    const-string p1, "SysUI asleep, trimming memory."

    .line 121
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p0, p0, Lcom/android/systemui/keyguard/ResourceTrimmer;->globalWindowManager:Lcom/android/systemui/utils/GlobalWindowManager;

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    .line 131
    move-result-object p0

    .line 134
    invoke-virtual {p0, v0}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 135
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    .line 138
    move-result-object p0

    .line 141
    invoke-virtual {p0, v6}, Landroid/view/WindowManagerGlobal;->trimCaches(I)V

    .line 142
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 145
    :cond_5
    :goto_2
    return-object p2

    .line 148
    :goto_3
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 149
    iget-object p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 151
    sget-object v1, Lcom/android/systemui/keyguard/shared/model/TransitionState;->FINISHED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 153
    if-ne p1, v1, :cond_8

    .line 155
    sget-boolean p1, Lcom/android/systemui/keyguard/ResourceTrimmer;->DEBUG:Z

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    sget-object p1, Lcom/android/systemui/flags/Flags;->TRIM_FONT_CACHES_AT_UNLOCK:Lcom/android/systemui/flags/ReleasedFlag;

    .line 162
    iget-object v1, p0, Lcom/android/systemui/keyguard/ResourceTrimmer;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 164
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 166
    invoke-virtual {v1, p1}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 168
    move-result p1

    .line 171
    if-nez p1, :cond_6

    .line 172
    goto :goto_4

    .line 174
    :cond_6
    sget-boolean p1, Lcom/android/systemui/keyguard/ResourceTrimmer;->DEBUG:Z

    .line 175
    if-eqz p1, :cond_7

    .line 177
    const-string p1, "Trimming font caches since keyguard went away."

    .line 179
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/keyguard/ResourceTrimmer;->globalWindowManager:Lcom/android/systemui/utils/GlobalWindowManager;

    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    .line 189
    move-result-object p0

    .line 192
    invoke-virtual {p0, v0}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 193
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    .line 196
    move-result-object p0

    .line 199
    invoke-virtual {p0, v2}, Landroid/view/WindowManagerGlobal;->trimCaches(I)V

    .line 200
    :cond_8
    :goto_4
    return-object p2

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 204
.end method
