.class public final Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/WindowManager$KeyboardShortcutsReceiver;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$1;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyboardShortcutsReceived(Ljava/util/List;)V
    .locals 9

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$1;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 13
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeySearchResultMap:Ljava/util/Map;

    .line 15
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->sLock:Ljava/lang/Object;

    .line 17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 19
    check-cast p1, Ljava/util/HashMap;

    .line 21
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    goto :goto_2

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$1;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    new-instance v3, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object p1

    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 50
    check-cast v4, Landroid/view/KeyboardShortcutGroup;

    .line 51
    invoke-virtual {v4}, Landroid/view/KeyboardShortcutGroup;->getLabel()Ljava/lang/CharSequence;

    .line 53
    move-result-object v5

    .line 56
    new-instance v6, Ljava/util/ArrayList;

    .line 57
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {v4}, Landroid/view/KeyboardShortcutGroup;->getItems()Ljava/util/List;

    .line 62
    move-result-object v4

    .line 65
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object v4

    .line 69
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result v7

    .line 73
    if-eqz v7, :cond_1

    .line 74
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v7

    .line 79
    check-cast v7, Landroid/view/KeyboardShortcutInfo;

    .line 80
    new-instance v8, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;

    .line 82
    invoke-direct {v8, v7}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;-><init>(Landroid/view/KeyboardShortcutInfo;)V

    .line 84
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    goto :goto_1

    .line 90
    :cond_1
    new-instance v4, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$KeyboardShortcutMultiMappingGroup;

    .line 91
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$KeyboardShortcutMultiMappingGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 93
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    goto :goto_0

    .line 99
    :cond_2
    iput-object v3, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mSpecificAppGroup:Ljava/util/List;

    .line 100
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$1;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 102
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeySearchResultMap:Ljava/util/Map;

    .line 104
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->sLock:Ljava/lang/Object;

    .line 106
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 108
    check-cast p1, Ljava/util/HashMap;

    .line 110
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$1;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 115
    iget-object v0, p1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mFullShortsGroup:Ljava/util/List;

    .line 117
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mSystemGroup:Ljava/util/List;

    .line 119
    check-cast v0, Ljava/util/ArrayList;

    .line 121
    const/4 v2, 0x0

    .line 123
    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 124
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$1;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 127
    iget-object v0, p1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mFullShortsGroup:Ljava/util/List;

    .line 129
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mInputGroup:Ljava/util/List;

    .line 131
    check-cast v0, Ljava/util/ArrayList;

    .line 133
    const/4 v2, 0x1

    .line 135
    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 136
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$1;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 139
    iget-object v0, p1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mFullShortsGroup:Ljava/util/List;

    .line 141
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mOpenAppsGroup:Ljava/util/List;

    .line 143
    check-cast v0, Ljava/util/ArrayList;

    .line 145
    const/4 v2, 0x2

    .line 147
    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 148
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$1;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 151
    iget-object v0, p1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mFullShortsGroup:Ljava/util/List;

    .line 153
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mSpecificAppGroup:Ljava/util/List;

    .line 155
    check-cast v0, Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 159
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$1;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 162
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mFullShortsGroup:Ljava/util/List;

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mHandler:Landroid/os/Handler;

    .line 166
    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$3;

    .line 168
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$3;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;Ljava/util/List;)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
    .line 176
.end method
