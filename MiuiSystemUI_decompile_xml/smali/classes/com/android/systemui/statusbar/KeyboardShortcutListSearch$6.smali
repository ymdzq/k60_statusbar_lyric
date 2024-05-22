.class public final Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

.field public final synthetic val$keyboardShortcutsView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$6;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$6;->val$keyboardShortcutsView:Landroid/view/View;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$6;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    iput-object p1, v0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mQueryString:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$6;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$6;->val$keyboardShortcutsView:Landroid/view/View;

    .line 12
    const v0, 0x7f0a0468    # @id/keyboard_shortcuts_container

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p0

    .line 20
    check-cast p0, Landroid/widget/LinearLayout;

    .line 21
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->populateKeyboardShortcutSearchList(Landroid/widget/LinearLayout;)V

    .line 23
    return-void
    .line 26
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
