.class public final synthetic Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/compatui/CompatUIController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUIController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/compatui/CompatUIController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_3

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/compatui/CompatUIController;

    .line 9
    check-cast p1, Landroid/util/Pair;

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    .line 13
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 15
    check-cast v1, Landroid/app/TaskInfo;

    .line 17
    iget v1, v1, Landroid/app/TaskInfo;->taskId:I

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v1

    .line 24
    check-cast v0, Ljava/util/HashSet;

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 30
    check-cast v0, Landroid/app/TaskInfo;

    .line 32
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 34
    check-cast p1, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 36
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->onCompatInfoChanged(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    .line 38
    return-void

    .line 41
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/compatui/CompatUIController;

    .line 42
    check-cast p1, Landroid/util/Pair;

    .line 44
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mTaskIdToRestartDialogWindowManagerMap:Landroid/util/SparseArray;

    .line 46
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 48
    check-cast v1, Landroid/app/TaskInfo;

    .line 50
    iget v1, v1, Landroid/app/TaskInfo;->taskId:I

    .line 52
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 54
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

    .line 57
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 59
    check-cast p1, Landroid/app/TaskInfo;

    .line 61
    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    .line 63
    check-cast p0, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->onSizeCompatRestartButtonClicked(I)V

    .line 67
    return-void

    .line 70
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/compatui/CompatUIController;

    .line 71
    check-cast p1, Landroid/util/Pair;

    .line 73
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 75
    iget-boolean v1, v0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsRestartDialogOverrideEnabled:Z

    .line 77
    const/4 v2, 0x0

    .line 79
    const/4 v3, 0x1

    .line 80
    if-nez v1, :cond_1

    .line 81
    iget-boolean v1, v0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsRestartDialogEnabled:Z

    .line 83
    if-eqz v1, :cond_0

    .line 85
    iget-boolean v1, v0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mIsLetterboxRestartDialogAllowed:Z

    .line 87
    if-eqz v1, :cond_0

    .line 89
    goto :goto_0

    .line 91
    :cond_0
    move v1, v2

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    move v1, v3

    .line 94
    :goto_1
    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 97
    check-cast v1, Landroid/app/TaskInfo;

    .line 99
    iget-object v0, v0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;->mCompatUISharedPreferences:Landroid/content/SharedPreferences;

    .line 101
    iget v4, v1, Landroid/app/TaskInfo;->userId:I

    .line 103
    iget-object v1, v1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 105
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "@"

    .line 119
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v1

    .line 130
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 131
    move-result v0

    .line 134
    xor-int/2addr v0, v3

    .line 135
    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mSetOfTaskIdsShowingRestartDialog:Ljava/util/Set;

    .line 138
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 140
    check-cast v1, Landroid/app/TaskInfo;

    .line 142
    iget v1, v1, Landroid/app/TaskInfo;->taskId:I

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object v1

    .line 149
    check-cast v0, Ljava/util/HashSet;

    .line 150
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 155
    check-cast v0, Landroid/app/TaskInfo;

    .line 157
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 159
    check-cast p1, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 161
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->onCompatInfoChanged(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    .line 163
    goto :goto_2

    .line 166
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

    .line 167
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 169
    check-cast p1, Landroid/app/TaskInfo;

    .line 171
    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    .line 173
    check-cast p0, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->onSizeCompatRestartButtonClicked(I)V

    .line 177
    :goto_2
    return-void

    .line 180
    :pswitch_3
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/compatui/CompatUIController;

    .line 181
    check-cast p1, Landroid/util/Pair;

    .line 183
    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController;->mActiveLetterboxEduLayout:Lcom/android/wm/shell/compatui/LetterboxEduWindowManager;

    .line 186
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 188
    check-cast v0, Landroid/app/TaskInfo;

    .line 190
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 192
    check-cast p1, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    .line 194
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->createOrUpdateReachabilityEduLayout(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    .line 196
    return-void

    .line 199
    :goto_3
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/compatui/CompatUIController;

    .line 200
    check-cast p1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    iget v0, p1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mDisplayId:I

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIController;->showOnDisplay(I)Z

    .line 209
    move-result p0

    .line 212
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateVisibility(Z)V

    .line 213
    return-void

    .line 216
    nop

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 218
.end method
