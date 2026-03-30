import { RouteRecordRaw } from "vue-router";
import IndexPage from "../pages/IndexPage.vue";
import BasicLearningPage from "../pages/BasicLearningPage.vue";
import ChallengeLearningPage from "../pages/ChallengeLearningPage.vue";
import PlaygroundPage from "../pages/PlaygroundPage.vue";

/**
 * 路由列表
 */
export default [
  {
    path: "/",
    component: IndexPage,
    redirect: "/learn",
    props: true,
  },
  {
    path: "/learn/:levelKey?",
    component: IndexPage,
    props: true,
  },
  {
    path: "/basic-learning",
    component: BasicLearningPage,
  },
  {
    path: "/challenge-learning",
    component: ChallengeLearningPage,
  },
  {
    path: "/levels",
    redirect: "/basic-learning",
  },
  {
    path: "/playground",
    component: PlaygroundPage,
  },
] as RouteRecordRaw[];
